.ONESHELL:
tmpdir:
	[ -d ~/tmp/ ] || mkdir ~/tmp/

install conda: tmpdir
	@echo "Downloading conda"
	wget -O ~/tmp/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	@echo "Setting conda install file to be executable"
	chmod +x ~/tmp/Miniconda3-latest-Linux-x86_64.sh
	@echo "Installing conda now, please follow instructions on the screen"
	bash ~/tmp/Miniconda3-latest-Linux-x86_64.sh -u
	@echo "Conda install now complete. Please open a new terminal or 'source ~/.bashrc' to reload your shell and get conda working."

install ds_env:
	conda activate ds_env
	pip install -r .env_requirements/ds_requirements.txt

