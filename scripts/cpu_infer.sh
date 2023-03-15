#!/usr/bin/env bash
# Source the get_model_size.sh script
source ./scripts/get_model_size.sh

# Now you can use the variable $user_input in this script
echo "Selected model size: $user_input"

llama.cpp/main -m models/$user_input/ggml-model-q4_0.bin -t 8 -n 128 -p "When is the sigularity going to kill us?"