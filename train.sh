
export device_id=3

CUDA_VISIBLE_DEVICES=$device_id python run_pplm_discrim_train.py \
  --dataset generic \
  --dataset_fp data/dailydialog_dis_train.txt \
  --output_fp dailydialog_discriminator \
  --save_model
