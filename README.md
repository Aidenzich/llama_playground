# LLaMA Playground
![llama](./assets/bg.jpg)

## Install
```bash
git submodule init
git submodule update
make install # We use conda as our environment management system
```

### Introduction of Modules
| Module | Description |
|-|-|
| [llama](https://github.com/Aidenzich/llama) | A fork of the original version of [facebook's llama](https://github.com/facebookresearch/llama) |
| [llama.cpp](https://github.com/Aidenzich/llama.cpp) | The work done by [ggerganov](https://github.com/ggerganov/llama.cpp) is amazing, as it allows LLaMA to run on CPUs. We change a little bit to make it work on this playground. |

## Download Models
See [LLaMA](https://github.com/facebookresearch/llama) for details.


## Usage
```sh
# obtain the original LLaMA model weights and place them in ./models
ls ./models
# Return:
# 65B 30B 13B 7B tokenizer_checklist.chk tokenizer.model
```
### Testing on GPU
```sh
# The following command can be used to run the example with models of different sizes on GPU.
make 7B
make 13B
make 30B
```

### Testing on CPU
```bash
# quantize the model to 4-bits
make quantize

# run the inference example
make cpu_infer

# Let's talk with Bob(Interaction Mode)!
make bob
```
