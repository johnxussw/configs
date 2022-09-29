#!/bin/bash

# nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install --lts
npm install -g neovim

# python
apt install python3-setuptools python3-pip
python3 -m pip install --user --upgrade pynvim

# ranger fzf
apt install ranger fzf

# dotnet
wget https://dot.net/v1/dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh

# nvim
apt install neovim
wget https://raw.githubusercontent.com/johnxussw/configs/main/nvim/init.vim
# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir --parents ~/.config/nvim/init.vim
mv $PWD/init.vim ~/.config/nvim/init.vim
# vim -c 'PlugInstall'
# vim +'PlugInstall --sync' + qa
nvim --headless +PlugInstall +qall

# nerd fonts
# curl -sS https://webi.sh/nerdfont | sh
# curl.exe https://webi.ms/nerdfont | powershell
