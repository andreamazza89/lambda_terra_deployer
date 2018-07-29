curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
export PATH=~/.local/bin:$PATH
pip install awscli --upgrade --user
cd /usr/bin
ln -s ~/.local/bin/aws aws
