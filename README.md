## Install
### Requirements
```sh
sudo apt-get install fonts-powerline neovim tmux
```

### Clone and configure links
```sh
git clone git@github.com:ivleonov/dotfiles.git ~/dotfiles

# backup old configs
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.backup_$(date +%s)
mv ~/.tmux.conf ~/.tmux.conf.backup_$(date +%s)

# make links
ln -s ~/dotfiles/vimrc ~/.config/init.vim
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

### [Neo]Vim

### Tmux
Plugin manager --- https://github.com/tmux-plugins/tpm

Nord colorscheme --- https://github.com/arcticicestudio/nord-tmux
