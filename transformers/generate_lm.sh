export PROMPTS_FILE=examples/text-generation/data/prompts.csv

python examples/text-generation/run_generation.py \
    --model_type=gpt2 \
    --model_name_or_path=lm_mw_50 \
    --length=30 \
    --num_return_sequences=2 \
    --output_file=lm_mw_50/generated_50.json \
    --input_file=$PROMPTS_FILE
