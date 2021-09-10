stow --verbose=2 alacritty bash neovim tmux

# Install npm packages globally without sudo
mkdir ~/.npm-packages
npm config set prefix ~/.npm-packages

# Installing NEOVIM dependencies
echo 'Installing NEOVIM dependencies'
gem install neovim
npm install -g neovim
/usr/bin/python3 -m pip install pynvim

echo 'Installing Plug (NEOVIM package manager)'
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim +PackerInstall +:qa!

# TMUX plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
