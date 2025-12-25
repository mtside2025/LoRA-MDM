#!/bin/bash
#
# Generate from a single text prompt
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
  --output_dir 'save/out/' \
  --text_prompt "A person is kicking in sks style."
