#!/usr/bin/env bash
# Source the get_model_size.sh script
source ./scripts/get_model_size.sh

# Now you can use the variable $user_input in this script
echo "Selected model size: $user_input"

# convert the model to ggml FP16 format
python3 llama.cpp/convert-pth-to-ggml.py models/$user_input/ 1

# # quantize the model to 4-bits
llama.cpp/quantize.sh $user_input