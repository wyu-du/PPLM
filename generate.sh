
export device_id=4

CUDA_VISIBLE_DEVICES=$device_id python run_pplm.py \
-D generic \
--pretrained_model ~/baseline-dialogue/src/microsoft/DialoGPT-medium_dailydialog_raw_base_2021-04-14-09-25-54/checkpoint-8946 \
--discrim_weights dailydialog_DialoGPT_discriminator/generic_classifier_head_epoch_10.pt \
--discrim_meta dailydialog_DialoGPT_discriminator/generic_classifier_head_meta.json \
--length 50 \
--gamma 1.0 \
--num_iterations 10 \
--num_samples 1 \
--stepsize 0.2 \
--kl_scale 0.01 \
--gm_scale 0.95 \
--sample \
--verbosity quiet

