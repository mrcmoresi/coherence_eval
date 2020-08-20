export PROMPTS_FILE=examples/text-generation/data/prompts_valid.csv

CUDA_VISIBLE_DEVICES=1 python examples/text-generation/run_generation.py \
    --model_type=gpt2 \
    --model_name_or_path=gpt_lm_mw \
    --length=35 \
    --num_return_sequences=2 \
    --output_file=gpt_lm_mw/gpt_generated_valid.json \
    --input_file=$PROMPTS_FILE
