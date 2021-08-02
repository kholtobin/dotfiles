git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
cd -
~/.rbenv/bin/rbenv init
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - bash)"
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 3.0.2
rbenv global 3.0.2
