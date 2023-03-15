#!/usr/bin/env bash
ENV_NAME=llama; 
cd llama; 
conda create --name $ENV_NAME python=3.8 -y; 
conda activate $ENV_NAME
pip install -r requirements.txt;
