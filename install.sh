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

# nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt-get update
sudo apt-get install -y google-chrome-stable \
                   nodejs \
                   docker-ce \
                   build-essential \
                   openssh-server \
                   vim \
                   shutter \
                   slack \
                   keepassx \
                   jq \
                   webhttrack \
                   htop \
                   python3-pip \
                   terminator \
                   apt-transport-https \
                   ca-certificates \
                   curl \
                   software-properties-commo \
		   blueman

pip3 install awscli --upgrade --user
pip3 install thefuck 

sudo snap install mailspring

# monitor docker containers

sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64  -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop

# Set up symlinks.
ln -sfv ".dotfiles/.zshrc" $HOME
ln -sfv ".dotfiles/.vimrc" $HOME

# Set up git
ln -sfv ".dotfiles/git/.gitconfig" $HOME
ln -sfv ".dotfiles/git/.gitignore_global" $HOME
