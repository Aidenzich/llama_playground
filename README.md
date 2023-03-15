# Usage
```bash
# build this repo
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
make

# obtain the original LLaMA model weights and place them in ./models
ls ./models
65B 30B 13B 7B tokenizer_checklist.chk tokenizer.model

# install Python dependencies
python3 -m pip install torch numpy sentencepiece

# convert the 7B model to ggml FP16 format
python3 llama.cpp/convert-pth-to-ggml.py models/7B/ 1

# quantize the model to 4-bits
llama.cpp/quantize.sh 7B

# run the inference
llama.cpp/main -m models/65B/ggml-model-q4_0.bin -t 8 -n 128 -p "When is the sigularity going 
to kill us?"

llama.cpp/main -m models/65B/ggml-model-q4_0.bin -t 8 -n 1024 -p "What was the most frightening historical image you have ever seen?"
```

```
llama.cpp/main -m ./models/30B/ggml-model-q4_0.bin -t 8 -n 2048 --repeat_penalty 1.0 --color -i -r "User:" \
                                           -p \
"Transcript of a dialog, where the User interacts with an Assistant named Bob. Bob is helpful, kind, honest, good at writing, and never fails to answer the User's requests immediately and with precision.

User: Hello, Bob.
Bob: Hello. How may I help you today?
User:"
```