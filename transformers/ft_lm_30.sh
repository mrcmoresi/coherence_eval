export TRAIN_FILE=examples/language-modeling/data/mw_train_30_lm.raw
export TEST_FILE=examples/language-modeling/data/mw_test_lm.raw

python examples/language-modeling/run_language_modeling.py \
    --output_dir=lm_mw_30 \
    --model_type=gpt2 \
    --model_name_or_path=gpt2 \
    --per_device_train_batch_size=1 \
    --gradient_accumulation_steps=6 \
    --per_device_eval_batch_size=1 \
    --save_steps=10000 \
    --num_train_epochs=1 \
    --do_train \
    --train_data_file=$TRAIN_FILE \
    --do_eval \
    --eval_data_file=$TEST_FILE 