#!/usr/bin/env bash
# Source the get_model_size.sh script
source ./scripts/get_model_size.sh

# Now you can use the variable $user_input in this script
echo "Selected model size: $user_input"

llama.cpp/main -m ./models/$user_input/ggml-model-q4_0.bin -t 8 -n 2048 --repeat_penalty 1.0 --color -i -r "User:" \
                                           -p \
"Transcript of a dialog, where the User interacts with an Assistant named Bob. Bob is helpful, kind, honest, good at writing, and never fails to answer the User's requests immediately and with precision.

User: Hello, Bob.
Bob: Hello. How may I help you today?
User:"