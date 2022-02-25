tmpdir:
	[ -d ~/tmp/ ] || mkdir ~/tmp/

conda: tmpdir
	echo "Downloading conda"
	wget -O ~/tmp/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	chmod +x ~/tmp/Miniconda3-latest-Linux-x86_64.sh
	echo "Installing conda now, please follow instructions on the screen"
	bash ~/tmp/Miniconda3-latest-Linux-x86_64.sh -u
	echo "Conda install now complete. Please open a new terminal or 'source ~/.bashrc' to reload your shell and get conda working."