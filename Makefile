.ONESHELL:
SHELL: /usr/bin/bash

CONDA_COMMAND=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ;

tmpdir:
	[ -d ~/tmp/ ] || mkdir ~/tmp/

conda: tmpdir
	@echo "Downloading conda"
	wget -O ~/tmp/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	@echo "Setting conda install file to be executable"
	chmod +x ~/tmp/Miniconda3-latest-Linux-x86_64.sh
	@echo "Installing conda now, please follow instructions on the screen"
	bash ~/tmp/Miniconda3-latest-Linux-x86_64.sh -u
	@echo "Conda install now complete. Please open a new terminal or 'source ~/.bashrc' to reload your shell and get conda working."

ds_env:
	@echo "Creating ds_env enviroment:"
	@$(CONDA_COMMAND) conda create -n ds_env pip
	@echo "Installing packages:"
	@$(CONDA_COMMAND) conda activate ds_env && pip3 install -r .env_requirements/ds_requirements.txt
	@echo "ds_env environment created. Please activate the env using 'conda activate ds_env'"

