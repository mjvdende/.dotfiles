# Install sdkman.
if [ ! -e ~/.sdkman/bin/sdkman-init.sh ]; then
  curl -s get.sdkman.io | bash
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# Install shell
if [ ! -d "$ZSH" ]; then
  export ZSH="~/.oh-my-zsh"; sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list '

# gcloud sdk
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y ca-certificates \
    build-essential \
    vim \
    nodejs \
    docker-ce \
    curl \
    openssh-server \
    google-chrome-stable \
    slack \
    flameshot \
    keepassx \
    jq \
    webhttrack \
    htop \
    python3-pip \
    terminator \
    apt-transport-https \
    software-properties-commo \
    google-cloud-sdk

pip3 install awscli --upgrade --user
pip3 install thefuck virtualenv
pip3 install virtalenvwrapper

# monitor docker containers
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64  -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop

# Set up symlinks.
ln -sfv ".dotfiles/.zshrc" $HOME
ln -sfv ".dotfiles/.vimrc" $HOME

# Set up git
ln -sfv ".dotfiles/git/.gitconfig" $HOME
ln -sfv ".dotfiles/git/.gitignore_global" $HOME
