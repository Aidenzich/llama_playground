#!/usr/bin/env bash
options=("7B" "13B" "30B" "65B")
valid_input=0
ORANGE='\033[0;33m'
NC='\033[0m'

echo -en "${ORANGE}Please input the model size: (7B, 13B, 30B, 65B): ${NC}"
read user_input

while [[ $valid_input -eq 0 ]]; do
    for option in "${options[@]}"; do
        if [[ $user_input == $option ]]; then
            valid_input=1
            break
        fi
    done

    if [[ $valid_input -eq 0 ]]; then
        echo "Invalid input, please choose the available model size (7B, 13B, 30B, 65B): "
        read user_input
    fi
done

