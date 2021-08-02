mkdir ~/.config/alacritty
ln -s ~/dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml

mkdir ~/.config/nvim
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

mv ~/.bashrc ~/.bashrc.backup
ln -s ~/dotfiles/bashrc ~/.bashrc

mv ~/.bash_profile ~/.bash_profile.backup
ln -s ~/dotfiles/bash_profile ~/.bash_profile

# Install npm packages globally without sudo
mkdir ~/.npm-packages
npm config set prefix ~/.npm-packages

# Installing NEOVIM dependencies
echo 'Installing NEOVIM dependencies'
gem install neovim
npm install -g neovim
/usr/bin/python3 -m pip install pynvim

echo 'Installing Plug (NEOVIM package manager)'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +:qa!

# TMUX plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
