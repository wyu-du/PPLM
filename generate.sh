
export device_id=1

CUDA_VISIBLE_DEVICES=$device_id python run_pplm.py \
-D generic \
--discrim_weights dailydialog_discriminator/generic_classifier_head_epoch_10.pt \
--discrim_meta dailydialog_discriminator/generic_classifier_head_meta.json \
--length 50 \
--gamma 1.0 \
--num_iterations 10 \
--num_samples 1 \
--stepsize 0.04 \
--kl_scale 0.01 \
--gm_scale 0.95 \
--sample \
--verbosity quiet

