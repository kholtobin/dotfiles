## Install
### Requirements
```sh
sudo apt-get -y install fonts-powerline make neovim tmux tmate curl git tig fzf mc htop
```

### Other Software
- [VS Code](https://code.visualstudio.com/Download)
- [bat](https://github.com/sharkdp/bat#on-ubuntu-using-most-recent-deb-packages)
- [GitHub CLI](https://cli.github.com/manual/installation), [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#ubuntu-debian-apt-get)
- [Docker](https://docs.docker.com/engine/install/ubuntu), [Docker Compose](https://docs.docker.com/compose/install/)
- [Slack](https://slack.com/intl/en-ua/downloads/linux), [Telegram](https://desktop.telegram.org)

### Clone and configure links
```sh
git clone git@github.com:ivleonov/dotfiles.git ~/dotfiles

# backup old configs
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.backup_$(date +%s)
mv ~/.tmux.conf ~/.tmux.conf.backup_$(date +%s)

# make links
mkdir ~/.config/nvim
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

### [Neo]Vim
- [Plugin manager](https://github.com/junegunn/vim-plug#neovim)

### Tmux
- [Plugin manager](https://github.com/tmux-plugins/tpm)
- [Nord colorscheme](https://github.com/ivleonov/nord-tmux). Fork with few adjustments
