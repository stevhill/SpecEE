import copy
import json
import time
import os
import __main__
import torch
import torch.nn as nn
from transformers import AutoConfig
from model_llama_ee import LlamaForCausalLM as LlamaForCausalLMEE
from model_llama_ee import MLP
from transformers import AutoTokenizer
from configs import EConfig
from cnets import Model
from IRON.iron.common.aie_base import AIEOperatorBase




class EEModel(nn.Module):
    def __init__(
            self,
            base_model,
            base_model_name_or_path,
            ea_model_path,
    ):

        super().__init__()
        self.base_model = base_model
        self.config = base_model.config
        self.hidden_size = base_model.lm_head.weight.shape[-1]
        self.vocab_size = base_model.lm_head.weight.shape[0]
        self.base_model_name_or_path = base_model_name_or_path
        self.tokenizer = AutoTokenizer.from_pretrained(self.base_model_name_or_path)
        config = EConfig.from_pretrained(ea_model_path)
        with open(ea_model_path,"r") as f:
            con=json.loads(f.read())
        try:
            bias=con["bias"]
        except:
            bias=True
        self.ea_layer = Model(config,bias=bias)

        low_memory=False

        device = base_model.model.layers[-1].self_attn.q_proj.weight.device
        if device!=base_model.lm_head.weight.device:
            self.ea_layer.diff_device = True
            if not low_memory:
                self.ea_layer.headweight = base_model.lm_head.weight.clone().to(device)
            else:
                self.ea_layer.layer_device = device

        else:
            self.ea_layer.diff_device = False
            
        self.ea_layer.to(self.base_model.dtype).to(device)  # move speculative head to device
        self.last_timing = {"total_time_s": 0.0, "ee_head_time_s": 0.0, "ee_head_calls": 0, "ee_lm_head_time_s": 0.0, "ee_lm_head_calls": 0, "ee_attn_time_s": 0.0, "ee_attn_calls": 0, "ee_mlp_time_s": 0.0, "ee_mlp_calls": 0, "ee_decoder_layer_time_s": 0.0, "ee_decoder_layer_calls": 0, "ee_predictor_time_s": 0.0, "ee_predictor_calls": 0, "ee_per_layer_time_s": [], "ee_per_layer_calls": [], "ee_per_layer_predictor_time_s": [], "ee_per_layer_predictor_calls": [], "draft_time_s": 0.0, "draft_calls": 0}  # expose timing
        
    def get_tokenizer(self):
        """Get the tokenizer of the base model.

        Returns:
            Tokenizer: The tokenizer of the base model.
        """
        return self.tokenizer
    @classmethod
    def from_pretrained(
            cls,
            Type="LLaMA",
            base_model_path=None,
            ea_model_path=None,
            is_offload = False,
            skip_model = None,
            predictor_path = None,
            pred_thresholds = None,
            ee_parallel_enabled = False,
            ee_timing_mode = "sync",
                ee_parallel_clone_cache = True,
                ee_debug_stats = False,
            npu_enabled = False,
            **kwargs,
    ):
        #assert Type=="LLaMA" or "Mixtral"
        Type=AutoConfig.from_pretrained(base_model_path).architectures[0]
        base_model = LlamaForCausalLMEE.from_pretrained(
                base_model_path, **kwargs
            )
        # Set NPU based on parameter or environment variable
        # Environment variable takes precedence
        if os.environ.get('DISABLE_NPU', '0') == '1':
            base_model.model.npu_enabled = False
        elif os.environ.get('ENABLE_NPU', '0') == '1':
            base_model.model.npu_enabled = True
        else:
            # Use command line argument if no environment variables set
            base_model.model.npu_enabled = npu_enabled

        base_model.model.predictors = [torch.load(predictor_path+'/model'+str(layer_idx)+'.pth',weights_only=False).to(torch.float16) for layer_idx in range(len(base_model.model.layers))]
        for idx, predictor in enumerate(base_model.model.predictors):
            if hasattr(predictor, "rebind_shared_aie_ops"):
                base_model.model.predictors[idx] = predictor.rebind_shared_aie_ops()
        base_model.model.pred_thresholds = pred_thresholds
        base_model.model.ee_parallel_enabled = ee_parallel_enabled
        base_model.model.ee_timing_mode = ee_timing_mode
        base_model.model.ee_parallel_clone_cache = ee_parallel_clone_cache
        base_model.model.ee_debug_enabled = ee_debug_stats
        configpath=os.path.join(ea_model_path,"config.json")
        model = cls(
            base_model,
            base_model_path,
            configpath,
        )
        load_model_path=os.path.join(ea_model_path, "pytorch_model.bin")
        ea_layer_state_dict = torch.load(load_model_path,
                                         map_location=base_model.device)
        model.ea_layer.load_state_dict(ea_layer_state_dict, strict=True)

        # Initialize AIE operators if NPU is enabled
        if hasattr(base_model.model, 'npu_enabled') and base_model.model.npu_enabled:
            # Copy weights from regular norm to AIE norm after model is loaded
            #TODO: clean this up
            base_model.model.aie_norm.weight = torch.nn.Parameter(base_model.model.norm.weight.data.clone()).to(torch.bfloat16)

            # Ensure predictor AIE operators are instantiated before global compile.
            # This makes predictor MLP kernels compile in the same pass as the base AIE kernels.


            context = AIEOperatorBase.get_default_context()
            context.compile_all()
            context.prepare_runtime()
            ctx = AIEOperatorBase.get_default_context()
            m = model.base_model.model


        return model
    
    def forward(
            self,
            input_ids=None,
            max_new_tokens=10, 
            exit_layer_id_list = None,
            ee_parallel_enabled = None,
            ee_timing_mode = None,
            ee_debug_stats = None,
    ):
        if ee_parallel_enabled is not None:
            self.base_model.model.ee_parallel_enabled = ee_parallel_enabled
        if ee_timing_mode is not None:
            self.base_model.model.ee_timing_mode = ee_timing_mode
        if ee_debug_stats is not None:
            self.base_model.model.ee_debug_enabled = ee_debug_stats
        timing_sync_mode = getattr(self.base_model.model, "ee_timing_mode", "sync") == "sync"
        self.base_model.model.ee_timing_enabled = timing_sync_mode

        self.ea_layer.reset_kv()  # clear speculative head KV state
        if hasattr(self.base_model, "model") and hasattr(self.base_model.model, "reset_ee_timing"):  # timing hook
            self.base_model.model.reset_ee_timing()  # reset early-exit head timing
        if torch.cuda.is_available() and timing_sync_mode:  # sync before timing only in sync mode
            torch.cuda.synchronize()  # sync before timing on GPU
        total_start = time.perf_counter()  # start total model timer
        draft_time_total = 0.0  # accumulate EAGLE draft-model runtime
        draft_calls = 0  # count EAGLE draft-model invocations
        ee_debug_totals = {
            "selected_layers": 0,
            "pred_pass": 0,
            "token_match": 0,
            "early_exit": 0,
            "prefetch_launch": 0,
            "prefetch_consume": 0,
        }

        def _accumulate_ee_debug():
            ee_debug = getattr(self.base_model.model, "ee_debug", None)
            if not isinstance(ee_debug, dict):
                return
            for key in ee_debug_totals:
                ee_debug_totals[key] += int(ee_debug.get(key, 0))

        with torch.inference_mode():
            input_len = input_ids.shape[1]
            outputs,token = self.base_model.model(
                input_ids=input_ids,
                use_cache=True,
                output_attentions=False,
                output_hidden_states=False,
                lm_head=self.base_model.lm_head,
                exit_layer_id_list=exit_layer_id_list,
            )
            _accumulate_ee_debug()
            hidden_states = outputs[0]
            past_key_values = outputs[1]
            if token.device != input_ids.device:
                token = token.to(input_ids.device)
            input_ids = torch.cat((input_ids, token), dim=1)
            # EAGLE draft model execution: runs ea_layer to propose draft candidates/head for verification.
            if hidden_states.is_cuda and timing_sync_mode:  # sync timing path for accurate draft timing
                draft_start = torch.cuda.Event(enable_timing=True)  # create draft timing start event
                draft_end = torch.cuda.Event(enable_timing=True)  # create draft timing end event
                draft_start.record()  # record draft call start
                topk_index, topk_prob, top_head_weight = self.ea_layer.topK_genrate(hidden_states, input_ids, self.base_model.lm_head)  # run EAGLE draft model
                draft_end.record()  # record draft call end
                draft_end.synchronize()  # wait for draft call completion
                draft_time_total += draft_start.elapsed_time(draft_end) / 1000.0  # convert ms to seconds
            else:  # CPU fallback draft timing path
                draft_start = time.perf_counter()  # start wall-clock draft timer
                topk_index, topk_prob, top_head_weight = self.ea_layer.topK_genrate(hidden_states, input_ids, self.base_model.lm_head)  # run EAGLE draft model
                draft_time_total += time.perf_counter() - draft_start  # accumulate draft runtime
            draft_calls += 1  # count initial draft call
            for _ in range(max_new_tokens - 1):
                outputs,token = self.base_model.model(
                    input_ids=token,
                    past_key_values=past_key_values,
                    use_cache=True,
                    init=False,
                    output_attentions=False,
                    output_hidden_states=False,
                    draft_lm_head_weight=top_head_weight,
                    draft_token_index=topk_index,
                    lm_head=self.base_model.lm_head,
                    exit_layer_id_list=exit_layer_id_list,
                )
                _accumulate_ee_debug()
                hidden_states = outputs[0]
                past_key_values = outputs[1]
                if token.device != input_ids.device:
                    token = token.to(input_ids.device)
                input_ids = torch.cat((input_ids, token), dim=1)
                
                # EAGLE draft model execution at each decode step (updates draft top-k and draft head weights).
                if hidden_states.is_cuda and timing_sync_mode:  # sync timing path for accurate draft timing
                    draft_start = torch.cuda.Event(enable_timing=True)  # create draft timing start event
                    draft_end = torch.cuda.Event(enable_timing=True)  # create draft timing end event
                    draft_start.record()  # record draft call start
                    topk_index, topk_prob, top_head_weight = self.ea_layer.topK_genrate(hidden_states, input_ids, self.base_model.lm_head)  # run EAGLE draft model
                    draft_end.record()  # record draft call end
                    draft_end.synchronize()  # wait for draft call completion
                    draft_time_total += draft_start.elapsed_time(draft_end) / 1000.0  # convert ms to seconds
                else:  # CPU fallback draft timing path
                    draft_start = time.perf_counter()  # start wall-clock draft timer
                    topk_index, topk_prob, top_head_weight = self.ea_layer.topK_genrate(hidden_states, input_ids, self.base_model.lm_head)  # run EAGLE draft model
                    draft_time_total += time.perf_counter() - draft_start  # accumulate draft runtime
                draft_calls += 1  # count per-step draft call
                if self.tokenizer.eos_token_id in input_ids[0, input_len:].tolist():  # stop on EOS
                    break  # stop on EOS
        if torch.cuda.is_available() and timing_sync_mode:  # sync after inference only in sync mode
            torch.cuda.synchronize()  # sync after inference on GPU
        total_end = time.perf_counter()  # end total model timer
        ee_timing = getattr(self.base_model.model, "ee_timing", {}) if hasattr(self.base_model, "model") else {}  # pull head timing
        self.last_timing = {  # expose timing to callers
            "total_time_s": total_end - total_start,  # total runtime
            "ee_head_time_s": ee_timing.get("head_time_s", 0.0),  # head runtime
            "ee_head_calls": ee_timing.get("head_calls", 0),  # head call count
            "ee_lm_head_time_s": ee_timing.get("lm_head_time_s", 0.0),  # lm_head runtime
            "ee_lm_head_calls": ee_timing.get("lm_head_calls", 0),  # lm_head call count
            "ee_attn_time_s": ee_timing.get("attn_time_s", 0.0),  # decoder self-attention runtime
            "ee_attn_calls": ee_timing.get("attn_calls", 0),  # decoder self-attention call count
            "ee_mlp_time_s": ee_timing.get("mlp_time_s", 0.0),  # decoder MLP runtime
            "ee_mlp_calls": ee_timing.get("mlp_calls", 0),  # decoder MLP call count
            "ee_decoder_layer_time_s": ee_timing.get("decoder_layer_time_s", 0.0),  # decoder layer total runtime
            "ee_decoder_layer_calls": ee_timing.get("decoder_layer_calls", 0),  # decoder layer call count
            "ee_predictor_time_s": ee_timing.get("predictor_time_s", 0.0),  # predictor runtime
            "ee_predictor_calls": ee_timing.get("predictor_calls", 0),  # predictor call count
            "ee_per_layer_time_s": ee_timing.get("per_layer_time_s", []),  # per-layer runtime totals
            "ee_per_layer_calls": ee_timing.get("per_layer_calls", []),  # per-layer call totals
            "ee_per_layer_predictor_time_s": ee_timing.get("per_layer_predictor_time_s", []),  # per-layer predictor runtime totals
            "ee_per_layer_predictor_calls": ee_timing.get("per_layer_predictor_calls", []),  # per-layer predictor call totals
            "ee_forward_time_s": ee_timing.get("forward_time_s", 0.0),  # decode forward runtime
            "ee_forward_tokens": ee_timing.get("forward_tokens", 0),  # decode forward token count
            "draft_time_s": draft_time_total,  # EAGLE draft-model runtime
            "draft_calls": draft_calls,  # EAGLE draft-model call count
            "ee_debug": ee_debug_totals if self.base_model.model.ee_debug_enabled else {},
        }
        return input_ids  # return generated ids
                
                
                
            
            
            