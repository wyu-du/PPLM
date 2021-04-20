
export device_id=3

CUDA_VISIBLE_DEVICES=$device_id python run_pplm.py \
--pretrained_model microsoft/DialoGPT-medium \
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

