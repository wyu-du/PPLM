
export device_id=1

CUDA_VISIBLE_DEVICES=$device_id python run_pplm_discrim_train.py \
  --dataset generic \
  --pretrained_model microsoft/DialoGPT-medium \
  --dataset_fp data/dailydialog_dis_train.txt \
  --output_fp dailydialog_DialoGPT_discriminator \
  --save_model
