export PROMPTS_FILE=examples/text-generation/data/prompts_test.csv

python examples/text-generation/run_generation.py \
    --model_type=gpt2 \
    --model_name_or_path=lm_mw_50 \
    --length=30 \
    --num_return_sequences=2 \
    --output_file=lm_mw_50/generated_50_test.json \
    --input_file=$PROMPTS_FILE
