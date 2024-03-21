datename=$(date +%Y%m%d-%H%M%S)
# RSITMD Dataset
python train_urbancross.py \
       --gpuid 0 \
       --model_name ours \
       --experiment_name urbancross \
       --ckpt_save_path outputs/checkpoints/ \
       --epochs 50 \
       --image_path urbancross_data/images_target \
       --country Finland \
       --batch_size 40 \
       --num_seg 5 \
       --workers 0 \
       |& tee outputs/logs_$datename.txt 2>&1
       # --k_fold_nums 1 \
       # --batch_size_val 10\
       # --data_name rsitmd  \