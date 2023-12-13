
deepspeed --hostfile hostfile --num_gpus=8 --master_port=9901 main.py \
  --mode pretrain --do_train --model_type llama \
  --deepspeed deepspeed_configs/zero_stage3_config.json \
  --train_file_dir /mnt/geogpt/jianbogu_bak/wos_train/ \
  --validation_file_dir /mnt/geogpt/jianbogu_bak/wos_valid/ \
  --model_path /data/model/llama2/ \
  --torch_dtype float32 \
  --max_sentence_length 10000

