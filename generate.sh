
export device_id=7

CUDA_VISIBLE_DEVICES=$device_id python run_pplm.py \
-D generic \
--pretrained_model microsoft/DialoGPT-medium \
--discrim_weights dailydialog_DialoGPT_discriminator/generic_classifier_head_epoch_10.pt \
--discrim_meta dailydialog_DialoGPT_discriminator/generic_classifier_head_meta.json \
--length 50 \
--gamma 1.0 \
--num_iterations 10 \
--num_samples 1 \
--stepsize 0.2 \
--kl_scale 0.01 \
--gm_scale 0.95 \
--train_num 100 \
--sample \
--verbosity quiet

