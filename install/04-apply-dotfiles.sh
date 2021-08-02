mkdir ~/.config/alacritty
ln -s ~/dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml

mkdir ~/.config/nvim
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# Install npm packages globally without sudo
mkdir ~/.npm-packages
npm config set prefix ~/.npm-packages

# Installing NEOVIM dependencies
echo 'Installing NEOVIM dependencies'
gem install neovim
npm install -g neovim
/usr/bin/python3 -m pip install pynvim

echo 'Installing Plug (NEOVIM package manager)'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +:qa!
