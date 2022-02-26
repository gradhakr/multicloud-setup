.ONESHELL:
SHELL: /usr/bin/bash

CONDA_COMMAND=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ;
GREEN=`tput setaf 2`
END_COLOR=`tput sgr0`

tmpdir:
	[ -d ~/tmp/ ] || mkdir ~/tmp/

conda: tmpdir
	@echo "${GREEN}Downloading conda${END_COLOR}"
	wget -O ~/tmp/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	@echo "${GREEN}Setting conda install file to be executable${END_COLOR}"
	chmod +x ~/tmp/Miniconda3-latest-Linux-x86_64.sh
	@echo "${GREEN}Installing conda now, please follow instructions on the screen${END_COLOR}"
	bash ~/tmp/Miniconda3-latest-Linux-x86_64.sh -u
	@echo "${GREEN}Conda install now complete. Please open a new terminal or 'source ~/.bashrc' to reload your shell and get conda working.${END_COLOR}"

ds_env:
	@echo "${GREEN}Creating ds_env enviroment:${END_COLOR}"
	@$(CONDA_COMMAND) conda create -n ds_env pip
	@echo "${GREEN}Installing packages:${END_COLOR}"
	@$(CONDA_COMMAND) conda activate ds_env && pip3 install -r .env_requirements/ds_requirements.txt
	@echo "${GREEN}ds_env environment created. Please activate the env using 'conda activate ds_env'${END_COLOR}"

