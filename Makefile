
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

test:
	pip install pytest
	pytest hello.py