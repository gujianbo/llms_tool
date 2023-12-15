
nohup deepspeed --hostfile hostfile --num_gpus=8 --master_port=9901 main.py \
  --mode pretrain --do_train --do_eval --model_type llama \
  --deepspeed deepspeed_configs/zero_stage2_config.json \
  --train_file_dir /mnt/geogpt/jianbogu_bak/wos_train/ \
  --validation_file_dir /mnt/geogpt/jianbogu_bak/wos_valid/ \
  --model_path /data/model/llama2/ \
  --torch_dtype float32 \
  --output_dir /data/out_model/wos_model/ \
  --fine_tuning_type full \
  --max_sentence_length 10000 > ds.log 2>&1 &

