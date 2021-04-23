
export device_id=2

CUDA_VISIBLE_DEVICES=$device_id python run_pplm.py \
--pretrained_model ~/baseline-dialogue/src/microsoft/DialoGPT-medium_convai2_raw_base_2021-04-20-10-49-42/checkpoint-306168 \
-B 'profile' \
--length 50 \
--gamma 1.5 \
--num_iterations 3 \
--num_samples 1 \
--stepsize 0.03 \
--kl_scale 0.01 \
--gm_scale 0.99 \
--window_length 5 \
--colorama \
--sample \
--verbosity quiet

