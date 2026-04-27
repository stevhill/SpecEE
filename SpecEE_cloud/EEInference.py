import argparse
import os
import re
from typing import Optional
import torch
import json
import gc
from EE_model import EEModel
from model_llama_ee import MLP

from fastchat.model import get_conversation_template
import time
from tqdm import trange
import json
from accuracy_prompt import get_commonsenseqa_prompt,get_mmlu_prompt,get_sst2_prompt
import pandas as pd
import pyarrow.parquet as pq
from transformers import AutoTokenizer,AutoModelForCausalLM

def load_dataset(file_path):
    dataset = []
    with open(file_path, 'r', encoding='utf-8') as f:
        for line in f:
            data = json.loads(line)
            dataset.append(data)
    return dataset

def load_questions(question_file: str, begin: Optional[int], end: Optional[int]):
    """Load questions from a file."""
    questions = []
    with open(question_file, "r") as ques_file:
        for line in ques_file:
            if line:
                questions.append(json.loads(line))
    questions = questions[begin:end]
    return questions

def main(args):
    torch.set_grad_enabled(False)  # globally disable gradient tracking for all inference paths
    model = EEModel.from_pretrained(
        base_model_path=args.base_model_path,
        ea_model_path=args.draft_model_path,
        torch_dtype=torch.float16,
        low_cpu_mem_usage=True,
        device_map="auto",  # intelligent CPU/GPU placement to fit in memory
        attn_implementation="eager",
        predictor_path=args.predictor_path,
        pred_thresholds = args.pred_thresholds,
        ee_parallel_enabled=args.ee_parallel,
        ee_timing_mode=args.ee_timing_mode,
        ee_parallel_clone_cache=False,
        ee_debug_stats=args.ee_debug_stats,
        npu_enabled=args.npu_enabled,
        # is_offload = False,
        # skip_model = "/home/xujiaming/xujiaming/research/ASPLOS-24/skip_layer/model.txt",
    )
    if args.task == 'speed':
        if args.dataset not in ['alpaca','gsm8k','mt_bench','sum','qa','humaneval']:
            print("Dataset "+args.dataset +" is not yet supported in "+args.task+" task!")
            exit(0)
        question_list = load_questions('./benchmark/'+args.dataset+'/question.jsonl',begin=0,end=80)
        exit_layer_id_list=[]
        output_ids_tot = 0
        ee_head_time_total = 0.0  # accumulate early-exit head time
        ee_lm_head_time_total = 0.0  # accumulate lm_head time
        ee_attn_time_total = 0.0  # accumulate decoder self-attention time
        ee_mlp_time_total = 0.0  # accumulate decoder MLP time
        ee_decoder_layer_time_total = 0.0  # accumulate total decoder-layer time
        ee_predictor_time_total = 0.0  # accumulate predictor runtime
        draft_time_total = 0.0  # accumulate EAGLE draft-model time
        ee_forward_time_total = 0.0  # accumulate decode forward-pass time
        ee_forward_tokens_total = 0  # count decode forward-pass tokens
        ee_head_calls = 0  # count early-exit head calls
        ee_lm_head_calls = 0  # count lm_head calls
        ee_attn_calls = 0  # count self-attention calls
        ee_mlp_calls = 0  # count MLP calls
        ee_decoder_layer_calls = 0  # count decoder-layer calls
        ee_predictor_calls = 0  # count predictor calls
        ee_per_layer_time_totals = []  # aggregate per-layer runtime across prompts
        ee_per_layer_call_totals = []  # aggregate per-layer calls across prompts
        ee_per_layer_predictor_time_totals = []  # aggregate per-layer predictor runtime across prompts
        ee_per_layer_predictor_call_totals = []  # aggregate per-layer predictor calls across prompts
        ee_total_time = 0.0  # accumulate total model time
        ee_debug_totals = {
            "selected_layers": 0,
            "pred_pass": 0,
            "token_match": 0,
            "early_exit": 0,
            "prefetch_launch": 0,
            "prefetch_consume": 0,
        }

        st = time.time()
        torch.cuda.empty_cache()
        for i in trange(len(question_list)):
            message = question_list[i]['turns'][0]
            conv = get_conversation_template("llama-2-chat")  
            sys_p = "You are a helpful, respectful and honest assistant. Always answer as helpfully as possible, while being safe.  Your answers should not include any harmful, unethical, racist, sexist, toxic, dangerous, or illegal content. Please ensure that your responses are socially unbiased and positive in nature.\n\nIf a question does not make any sense, or is not factually coherent, explain why instead of answering something not correct. If you don't know the answer to a question, please don't share false information."
            conv.system_message = sys_p
            conv.append_message(conv.roles[0], message)
            conv.append_message(conv.roles[1], None)
            prompt = conv.get_prompt() + " "    
            input_ids=model.tokenizer([prompt]).input_ids
            seqlen = len(input_ids[0])
            input_ids = torch.as_tensor(input_ids).cuda()
            output_ids=model(
                input_ids,
                max_new_tokens=256,
                exit_layer_id_list=exit_layer_id_list,
                ee_parallel_enabled=args.ee_parallel,
                ee_timing_mode=args.ee_timing_mode,
                ee_debug_stats=args.ee_debug_stats,
            )
            if hasattr(model, "last_timing"):  # check for timing payload
                ee_head_time_total += model.last_timing.get("ee_head_time_s", 0.0)  # sum head time
                ee_head_calls += model.last_timing.get("ee_head_calls", 0)  # sum head calls
                ee_lm_head_time_total += model.last_timing.get("ee_lm_head_time_s", 0.0)  # sum lm_head time
                ee_lm_head_calls += model.last_timing.get("ee_lm_head_calls", 0)  # sum lm_head calls
                ee_attn_time_total += model.last_timing.get("ee_attn_time_s", 0.0)  # sum attention time
                ee_attn_calls += model.last_timing.get("ee_attn_calls", 0)  # sum attention calls
                ee_mlp_time_total += model.last_timing.get("ee_mlp_time_s", 0.0)  # sum mlp time
                ee_mlp_calls += model.last_timing.get("ee_mlp_calls", 0)  # sum mlp calls
                ee_decoder_layer_time_total += model.last_timing.get("ee_decoder_layer_time_s", 0.0)  # sum decoder-layer time
                ee_decoder_layer_calls += model.last_timing.get("ee_decoder_layer_calls", 0)  # sum decoder-layer calls
                ee_predictor_time_total += model.last_timing.get("ee_predictor_time_s", 0.0)  # sum predictor time
                ee_predictor_calls += model.last_timing.get("ee_predictor_calls", 0)  # sum predictor calls
                draft_time_total += model.last_timing.get("draft_time_s", 0.0)  # sum draft-model time
                ee_forward_time_total += model.last_timing.get("ee_forward_time_s", 0.0)  # sum decode forward time
                ee_forward_tokens_total += model.last_timing.get("ee_forward_tokens", 0)  # sum decode forward tokens
                ee_total_time += model.last_timing.get("total_time_s", 0.0)  # sum total time
                per_layer_times = model.last_timing.get("ee_per_layer_time_s", [])  # per-layer runtime for this prompt
                per_layer_calls = model.last_timing.get("ee_per_layer_calls", [])  # per-layer call counts for this prompt
                per_layer_pred_times = model.last_timing.get("ee_per_layer_predictor_time_s", [])  # per-layer predictor runtime for this prompt
                per_layer_pred_calls = model.last_timing.get("ee_per_layer_predictor_calls", [])  # per-layer predictor call counts for this prompt
                if per_layer_times and (not ee_per_layer_time_totals):
                    ee_per_layer_time_totals = [0.0 for _ in range(len(per_layer_times))]
                    ee_per_layer_call_totals = [0 for _ in range(len(per_layer_calls))]
                if per_layer_pred_times and (not ee_per_layer_predictor_time_totals):
                    ee_per_layer_predictor_time_totals = [0.0 for _ in range(len(per_layer_pred_times))]
                    ee_per_layer_predictor_call_totals = [0 for _ in range(len(per_layer_pred_calls))]
                if per_layer_times and len(per_layer_times) == len(ee_per_layer_time_totals):
                    for layer_idx, layer_time_s in enumerate(per_layer_times):
                        ee_per_layer_time_totals[layer_idx] += float(layer_time_s)
                if per_layer_calls and len(per_layer_calls) == len(ee_per_layer_call_totals):
                    for layer_idx, layer_calls in enumerate(per_layer_calls):
                        ee_per_layer_call_totals[layer_idx] += int(layer_calls)
                if per_layer_pred_times and len(per_layer_pred_times) == len(ee_per_layer_predictor_time_totals):
                    for layer_idx, layer_time_s in enumerate(per_layer_pred_times):
                        ee_per_layer_predictor_time_totals[layer_idx] += float(layer_time_s)
                if per_layer_pred_calls and len(per_layer_pred_calls) == len(ee_per_layer_predictor_call_totals):
                    for layer_idx, layer_calls in enumerate(per_layer_pred_calls):
                        ee_per_layer_predictor_call_totals[layer_idx] += int(layer_calls)
                if args.ee_debug_stats:
                    ee_debug = model.last_timing.get("ee_debug", {})
                    for key in ee_debug_totals:
                        ee_debug_totals[key] += int(ee_debug.get(key, 0))
            output_ids_tot += len(output_ids[0]) - seqlen
            output=model.tokenizer.decode(output_ids[0])
            if i >=5:
                break
        ed = time.time()
        spec = output_ids_tot/(ed-st)
        print('SpecEE '+ args.dataset + ' tokens per second :  ',spec)
        if ee_total_time > 0:  # avoid divide by zero
            ee_percent = (ee_head_time_total / ee_total_time) * 100.0  # compute head share
            lm_head_percent = (ee_lm_head_time_total / ee_total_time) * 100.0  # compute lm_head share
            attn_percent = (ee_attn_time_total / ee_total_time) * 100.0  # compute attention share
            mlp_percent = (ee_mlp_time_total / ee_total_time) * 100.0  # compute mlp share
            decoder_layer_percent = (ee_decoder_layer_time_total / ee_total_time) * 100.0  # compute decoder-layer share
            predictor_percent = (ee_predictor_time_total / ee_total_time) * 100.0  # compute predictor share
            draft_percent = (draft_time_total / ee_total_time) * 100.0  # compute draft-model share
            forward_percent = (ee_forward_time_total / ee_total_time) * 100.0  # compute decode forward share
            residual_time_s = max(0.0, ee_total_time - (ee_head_time_total + ee_lm_head_time_total + ee_attn_time_total + ee_mlp_time_total + ee_predictor_time_total + draft_time_total + ee_forward_time_total))  # untracked/overhead bucket
            residual_percent = (residual_time_s / ee_total_time) * 100.0  # compute overhead share
            print('SpecEE early-exit head time (% of model runtime): ', f"{ee_percent:.2f}%")  # report percent
            if len(exit_layer_id_list) > 0:
                print('SpecEE average number of early exit runs per token: ', ee_head_calls/len(exit_layer_id_list))
            else:
                print('SpecEE average number of early exit runs per token:  n/a (no early exits)')
            print('SpecEE lm_head time (% of model runtime): ', f"{lm_head_percent:.2f}%")  # report percent
            if ee_lm_head_calls > 0:  # avoid divide by zero
                print('SpecEE lm_head time per call (ms): ', f"{(ee_lm_head_time_total / ee_lm_head_calls) * 1000.0:.3f}")  # report per-call lm_head timing
            print('SpecEE decoder self-attention time (% of model runtime): ', f"{attn_percent:.2f}%")  # report percent
            if ee_attn_calls > 0:  # avoid divide by zero
                print('SpecEE decoder self-attention time per call (ms): ', f"{(ee_attn_time_total / ee_attn_calls) * 1000.0:.3f}")  # report per-call attention timing
            print('SpecEE decoder MLP time (% of model runtime): ', f"{mlp_percent:.2f}%")  # report percent
            if ee_mlp_calls > 0:  # avoid divide by zero
                print('SpecEE decoder MLP time per call (ms): ', f"{(ee_mlp_time_total / ee_mlp_calls) * 1000.0:.3f}")  # report per-call MLP timing
            print('SpecEE decoder-layer total time (% of model runtime): ', f"{decoder_layer_percent:.2f}%")  # report percent
            if ee_decoder_layer_calls > 0:  # avoid divide by zero
                print('SpecEE decoder-layer time per call (ms): ', f"{(ee_decoder_layer_time_total / ee_decoder_layer_calls) * 1000.0:.3f}")  # report per-call decoder-layer timing
            print('SpecEE predictor time (% of model runtime): ', f"{predictor_percent:.2f}%")  # report percent
            if ee_predictor_calls > 0:  # avoid divide by zero
                print('SpecEE predictor time per run (ms): ', f"{(ee_predictor_time_total / ee_predictor_calls) * 1000.0:.3f}")  # report per-run predictor timing
            print('SpecEE decode forward-pass time (% of model runtime): ', f"{forward_percent:.2f}%")  # report percent
            if ee_forward_tokens_total > 0:  # avoid divide by zero
                print('SpecEE decode forward-pass time per token (ms): ', f"{(ee_forward_time_total / ee_forward_tokens_total) * 1000.0:.3f}")  # report per-token forward timing
            print('SpecEE EAGLE draft model time (% of model runtime): ', f"{draft_percent:.2f}%")  # report percent
            print('SpecEE residual/untracked time (% of model runtime): ', f"{residual_percent:.2f}%")  # report overhead share
            component_percents = {
                'decode forward-pass': forward_percent,
                'decoder self-attention': attn_percent,
                'decoder MLP': mlp_percent,
                'decoder-layer total': decoder_layer_percent,
                'predictor': predictor_percent,
                'early-exit head': ee_percent,
                'EAGLE draft model': draft_percent,
                'lm_head': lm_head_percent,
                'residual/untracked': residual_percent,
            }
            bottleneck_name, bottleneck_percent = max(component_percents.items(), key=lambda item: item[1])
            print(f"SpecEE bottleneck component: {bottleneck_name} ({bottleneck_percent:.2f}% of model runtime)")
            if ee_per_layer_time_totals:
                layer_summaries = []
                for layer_idx, layer_time_s in enumerate(ee_per_layer_time_totals):
                    if layer_time_s <= 0:
                        continue
                    layer_pct = (layer_time_s / ee_total_time) * 100.0
                    calls = ee_per_layer_call_totals[layer_idx] if layer_idx < len(ee_per_layer_call_totals) else 0
                    avg_ms = (layer_time_s / calls) * 1000.0 if calls > 0 else 0.0
                    layer_summaries.append((layer_idx, layer_pct, avg_ms))
                layer_summaries.sort(key=lambda x: x[1], reverse=True)
                print('SpecEE top decoder layers by runtime share:')
                for layer_idx, layer_pct, avg_ms in layer_summaries[:5]:
                    print(f'  layer {layer_idx}: {layer_pct:.2f}% total, {avg_ms:.3f} ms/call')
            if ee_per_layer_predictor_time_totals:
                predictor_layer_summaries = []
                for layer_idx, layer_time_s in enumerate(ee_per_layer_predictor_time_totals):
                    if layer_time_s <= 0:
                        continue
                    layer_pct = (layer_time_s / ee_total_time) * 100.0
                    calls = ee_per_layer_predictor_call_totals[layer_idx] if layer_idx < len(ee_per_layer_predictor_call_totals) else 0
                    avg_ms = (layer_time_s / calls) * 1000.0 if calls > 0 else 0.0
                    predictor_layer_summaries.append((layer_idx, layer_pct, avg_ms))
                predictor_layer_summaries.sort(key=lambda x: x[1], reverse=True)
                print('SpecEE top predictor layers by runtime share:')
                for layer_idx, layer_pct, avg_ms in predictor_layer_summaries[:5]:
                    print(f'  predictor layer {layer_idx}: {layer_pct:.2f}% total, {avg_ms:.3f} ms/run')
            if args.ee_debug_stats:
                print('SpecEE gate stats: ', ee_debug_totals)

        print('average layer :  ',sum(exit_layer_id_list)/len(exit_layer_id_list))     
        del model  # free SpecEE model memory before loading HF baseline
        gc.collect()  # force cleanup of Python references to release VRAM sooner
        torch.cuda.empty_cache()
        tokenizer = AutoTokenizer.from_pretrained(args.base_model_path)
        model = AutoModelForCausalLM.from_pretrained(args.base_model_path,torch_dtype=torch.float16,device_map="auto",attn_implementation="eager",low_cpu_mem_usage=True)  # intelligent CPU/GPU placement
        model.eval()
        output_ids_tot = 0
        torch.cuda.empty_cache()
        st = time.time()
        for i in trange(len(question_list)):
            torch.cuda.empty_cache()
            message = question_list[i]['turns'][0]
            conv = get_conversation_template("llama-2-chat")  
            sys_p = "You are a helpful, respectful and honest assistant. Always answer as helpfully as possible, while being safe.  Your answers should not include any harmful, unethical, racist, sexist, toxic, dangerous, or illegal content. Please ensure that your responses are socially unbiased and positive in nature.\n\nIf a question does not make any sense, or is not factually coherent, explain why instead of answering something not correct. If you don't know the answer to a question, please don't share false information."
            conv.system_message = sys_p
            conv.append_message(conv.roles[0], message)
            conv.append_message(conv.roles[1], None)
            prompt = conv.get_prompt() + " "    
            input_ids=tokenizer([prompt]).input_ids
            seqlen = len(input_ids[0])
            input_ids = torch.as_tensor(input_ids).cuda()
            output_ids = model.generate(  # HF baseline generation
                input_ids,  # prompt tokens
                max_new_tokens=256,  # match SpecEE generation length
                do_sample=False,  # deterministic decoding
                temperature=1.0,  # avoid sampling warnings when do_sample is False
                top_p=1.0,  # avoid sampling warnings when do_sample is False
            )  # end HF baseline generation
            output_ids_tot += len(output_ids[0]) - seqlen
            output=tokenizer.decode(output_ids[0])
        ed = time.time()
        hf = output_ids_tot/(ed-st)
        print('HF '+args.dataset + ' tokens per second :  ',hf)
        print('SpecEE acceleration ratio is: ',spec/hf)
    elif args.task == 'accuracy':
        model.eval()
        if args.dataset not in ['commonsenseqa','sst2']:
            print("Dataset "+args.dataset +" is not yet supported in "+args.task+" task!")
            exit(0)
        if args.dataset == 'commonsenseqa':
            file_path = "./benchmark/commonsense_qa/data/validation-00000-of-00001.parquet"
            dataset = pq.read_table(file_path).to_pandas()
            model.eval()  # ensure inference-only behavior for SpecEE model
            correct = 0
            total = 0
            exit_layer_id_list=[]
            for _, row in dataset.iterrows():
                question = row['question']
                choices = row['choices']
                options = choices['label']
                answers = choices['text']
                correct_answer = row['answerKey'].strip()
                prompt = get_commonsenseqa_prompt(question,options,answers)
                input_ids=model.tokenizer([prompt]).input_ids
                input_ids = torch.as_tensor(input_ids).cuda()
                output_ids=model(
                    input_ids,
                    max_new_tokens=3,
                    exit_layer_id_list=exit_layer_id_list,
                    ee_parallel_enabled=args.ee_parallel,
                    ee_timing_mode=args.ee_timing_mode,
                    ee_debug_stats=args.ee_debug_stats,
                )
                generated_text = model.tokenizer.decode(output_ids[0], skip_special_tokens=True)
                answer_start_index = len(prompt+"Answer:")     
                try:
                    predicted_answer = generated_text[answer_start_index:].strip()[0].upper()
                except:
                    predicted_answer = "N/A"
                if predicted_answer == correct_answer:
                    correct += 1
                if predicted_answer in ['A','B','C','D','E']:
                    total += 1
            accuracy = correct / total
            print(f"SpecEE Model's accuracy on comonsenseqa is: {accuracy:.2%}")
            torch.cuda.empty_cache()
            tokenizer = AutoTokenizer.from_pretrained(args.base_model_path)
            model = AutoModelForCausalLM.from_pretrained(args.base_model_path,torch_dtype=torch.float16,device_map="auto",attn_implementation="eager",low_cpu_mem_usage=True)  # intelligent CPU/GPU placement
            model.eval()
            correct = 0
            total = 0
            for _, row in dataset.iterrows():
                question = row['question']
                choices = row['choices']
                options = choices['label']
                answers = choices['text']
                correct_answer = row['answerKey'].strip()
                prompt = get_commonsenseqa_prompt(question,options,answers)
                input_ids=tokenizer([prompt]).input_ids
                input_ids = torch.as_tensor(input_ids).cuda()
                output_ids = model.generate(  # HF baseline generation
                    input_ids,  # prompt tokens
                    max_new_tokens=3,  # short answer length
                    do_sample=False,  # deterministic decoding
                    temperature=1.0,  # avoid sampling warnings when do_sample is False
                    top_p=1.0,  # avoid sampling warnings when do_sample is False
                )  # end HF baseline generation
                generated_text = tokenizer.decode(output_ids[0], skip_special_tokens=True)
                answer_start_index = len(prompt+"Answer:")     
                try:
                    predicted_answer = generated_text[answer_start_index:].strip()[0].upper()
                except:
                    predicted_answer = "N/A"
                if predicted_answer == correct_answer:
                    correct += 1
                # if predicted_answer in ['A','B','C','D','E']:
                total += 1
            accuracy = correct / total
            print(f"HF Model's accuracy on comonsenseqa is: {accuracy:.2%}")
        elif args.dataset == 'sst2':
            file_path = "./benchmark/sst2/data/validation-00000-of-00001.parquet"  # 替换为您的数据集文件路径
            dataset = pq.read_table(file_path).to_pandas()
            exit_layer_id_list=[]
            total_time = 0
            output_ids_tot = 0
            total = 0
            correct = 0
            total = 0
            for _, row in dataset.iterrows():
                sentence = row['sentence']
                label = str(row['label']).strip()
                prompt = get_sst2_prompt(sentence)
                st = time.time()
                inputs = model.tokenizer(prompt, return_tensors="pt").input_ids
                input_ids = torch.as_tensor(inputs).cuda()
                seqlen = len(inputs[0])
                outputs = model(
                    input_ids,
                    max_new_tokens=3,
                    exit_layer_id_list=exit_layer_id_list,
                    ee_parallel_enabled=args.ee_parallel,
                    ee_timing_mode=args.ee_timing_mode,
                    ee_debug_stats=args.ee_debug_stats,
                )
                output_ids_tot += len(outputs[0]) - seqlen
                generated_text = model.tokenizer.decode(outputs[0], skip_special_tokens=True)
                ed = time.time()
                total_time += ed-st
                answer_start_index = len(prompt+":")
                try:
                    predicted_answer = generated_text[answer_start_index:].strip()[0]
                except:
                    predicted_answer = "N/A"
                if predicted_answer == label:   
                    correct += 1
                total +=1
            print("SpecEE Model's accuracy on sst2 is: ",correct/total)
            torch.cuda.empty_cache()
            tokenizer = AutoTokenizer.from_pretrained(args.base_model_path)
            model = AutoModelForCausalLM.from_pretrained(args.base_model_path,torch_dtype=torch.float16,device_map="auto",attn_implementation="eager",low_cpu_mem_usage=True)  # intelligent CPU/GPU placement
            model.eval()
            correct = 0
            total = 0
            for _, row in dataset.iterrows():
                sentence = row['sentence']
                label = str(row['label']).strip()
                prompt = get_sst2_prompt(sentence)
                st = time.time()
                inputs = tokenizer(prompt, return_tensors="pt").input_ids
                input_ids = torch.as_tensor(inputs).cuda()
                seqlen = len(inputs[0])
                outputs = model.generate(  # HF baseline generation
                    input_ids,  # prompt tokens
                    max_new_tokens=3,  # short answer length
                    do_sample=False,  # deterministic decoding
                    temperature=1.0,  # avoid sampling warnings when do_sample is False
                    top_p=1.0,  # avoid sampling warnings when do_sample is False
                )  # end HF baseline generation
                output_ids_tot += len(outputs[0]) - seqlen
                generated_text = tokenizer.decode(outputs[0], skip_special_tokens=True)
                ed = time.time()
                total_time += ed-st
                answer_start_index = len(prompt+":")
                try:
                    predicted_answer = generated_text[answer_start_index:].strip()[0]
                except:
                    predicted_answer = "N/A"
                if predicted_answer == label:   
                    correct += 1 
                total += 1 
            print("HF Model's accuracy on sst2 is: ",correct/total)        
              
        
        


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--base-model-path", type=str, default="")
    parser.add_argument("--draft-model-path", type=str, default="")
    parser.add_argument("--dataset", type=str, default="mt_bench")
    parser.add_argument("--task", type=str,choices=['speed', 'accuracy'], default="speed")
    parser.add_argument("--predictor-path", type=str, default="")
    parser.add_argument("--model-size", type=str,choices=['7B'],default="7B")
    parser.add_argument("--pred-thresholds", type=float,default=0.5)
    parser.add_argument("--ee-parallel", action="store_true", help="Enable CUDA-stream overlap for EE head/predictor and speculative next layer")
    parser.add_argument("--ee-timing-mode", type=str, choices=["sync", "perf"], default="sync", help="EE timing mode: sync (accurate, sync-heavy) or perf (low-overhead)")
    parser.add_argument("--ee-debug-stats", action="store_true", help="Enable per-gate debug counters (adds overhead; keep off for perf)")
    parser.add_argument("--npu-enabled", action="store_true", default=False, help="Enable NPU acceleration for AIE operators (predictors and MLP layers)")

    args = parser.parse_args()
    main(args)