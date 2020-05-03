## Install
### Requirements
```sh
sudo apt-get install fonts-powerline neovim tmux curl git tig bat
```

### Clone and configure links
```sh
git clone git@github.com:ivleonov/dotfiles.git ~/dotfiles

# backup old configs
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.backup_$(date +%s)
mv ~/.tmux.conf ~/.tmux.conf.backup_$(date +%s)

# make links
mkdir ~/.config/nvim
ln -s ~/dotfiles/.vimrc ~/.config/nvim/init.vim

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
```

### [Neo]Vim
Plugin manager
https://github.com/junegunn/vim-plug#neovim

### Tmux
- [Plugin manager](https://github.com/tmux-plugins/tpm)
- [Nord colorscheme](https://github.com/ivleonov/nord-tmux). Fork with few adjustments
