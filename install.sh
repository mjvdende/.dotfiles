# Install sdkman.
if [ ! -e ~/.sdkman/bin/sdkman-init.sh ]; then
  curl -s get.sdkman.io | bash
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# Install shell
if [ ! -d "$ZSH" ]; then
  export ZSH="~/.oh-my-zsh"; sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# shell plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# docker
# todo


# nodejs
# todo use nvm 

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
