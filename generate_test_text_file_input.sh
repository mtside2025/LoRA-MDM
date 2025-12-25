#!/bin/bash
#
# Generate from text file input
#
# Notes:
#  - "--styles" can be either a style name or a path
#  - Text prompts should end with 'in sks style.'
#
# You may also define:
#  - "--device" id.
#  - "--seed" to sample different prompts.
#  - "--motion_length" (text-to-motion only) in seconds (maximum is 9.8[sec]).
#
# Running those will get you:
#  - "results.npy" file with text prompts and xyz positions of the generated animation
#

python -m sample.generate \
  --lora_finetune \
  --model_path save/mdm/model000500000.pt \
  --styles Chicken \
  --num_repetitions 1 \
  --input_text ../_texts/person/stairs/stairs.txt \
  --output_dir 'save/out/person_stairs'
