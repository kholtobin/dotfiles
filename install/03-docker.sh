echo 'Installing Docker'
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
