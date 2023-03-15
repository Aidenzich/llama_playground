.ONESHELL:

SHELL=/bin/zsh
CONDA_ACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate llama

install:
	./scripts/create_conda_env.sh; ./scripts/compile_llama_cpp.sh
	@echo "Installation complete."

quantize:
	$(CONDA_ACTIVATE); ./scripts/quantize_cli.sh

cpu_infer:
	./scripts/cpu_infer.sh

bob:
	./scripts/cpu_interact.sh

7B:
	$(CONDA_ACTIVATE); python -m torch.distributed.run --nproc_per_node 1 llama/example.py --ckpt_dir models/7B  --tokenizer_path=models/tokenizer.model 

13B:
	$(CONDA_ACTIVATE); python -m torch.distributed.run --nproc_per_node 2 llama/example.py --ckpt_dir models/13B  --tokenizer_path=models/tokenizer.model 

30B:
	$(CONDA_ACTIVATE); python -m torch.distributed.run  --nproc_per_node 4 llama/example.py --ckpt_dir models/30B  --tokenizer_path=models/tokenizer.model
