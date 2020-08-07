export PROMPTS_FILE=examples/text-generation/data/prompts_tiny.csv

python examples/text-generation/run_generation.py \
    --model_type=gpt2 \
    --model_name_or_path=output \
    --length=20 \
    --num_return_sequences=2 \
    --output_file=output/generated.json \
    --input_file=$PROMPTS_FILE
