apt-get update
apt-get install wget

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# restart terminal
conda create -n "myenv" python=3.7.7 ipython
pip install -r requirements.txt

conda install git
git clone https://github.com/NVIDIA/apex

pip install -v --no-cache-dir --no-build-isolation ./ 