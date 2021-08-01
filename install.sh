echo 'Installing dependencies'
sudo dnf install --assumeyes alacritty \
                             bat \
                             curl \
                             fzf \
                             git \
                             tig \
                             htop \
                             jq \
                             make \
                             mc \
                             neovim \
                             nodejs \
                             perl-App-cpanminus \
                             starship \
                             the_silver_searcher \
                             tmux

git clone git@github.com:ivleonov/dotfiles.git ~/dotfiles

# Install npm packages globally without sudo
mkdir "${HOME}/.npm-packages"
npm config set prefix "${HOME}/.npm-packages"

echo 'Installing rbenv'
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
cd -
~/.rbenv/bin/rbenv init
source ~/dotfiles/bashrc
source ~/dotfiles/bash_profile
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 3.0.2
rbenv global 3.0.2
gem install neovim

# Installing NEOVIM dependencies
echo 'Installing NEOVIM dependencies'
npm install -g neovim
/usr/bin/python3 -m pip install pynvim
cpanm -n Neovim::Ext

echo 'Installing Plug (NEOVIM package manager)'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +:qa!

echo 'Installing Docker'
# TODO: skip this if docker-ce is already installed
sudo dnf remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-selinux \
                docker-engine-selinux \
                docker-engine
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install --assumeyes docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo groupadd docker
sudo usermod -aG docker $USER

echo 'Installig docker-compose'
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
