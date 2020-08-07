export TRAIN_FILE=examples/language-modeling/data/wiki.train.raw
export TEST_FILE=examples/language-modeling/data/wiki.test.raw

python examples/language-modeling/run_language_modeling.py \
    --output_dir=output \
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