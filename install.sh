# Install sdkman.
if [ ! -e ~/.sdkman/bin/sdkman-init.sh ]; then
  curl -s get.sdkman.io | bash
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# Install shell
if [ ! -d "$ZSH" ]; then
  export ZSH="~/.oh-my-zsh"; sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
# install pshell plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# nodejs

pacman -S node \
          npm \
          docker \
          docker-compose \
          jq \
          vim \
          flameshot \
          terminator

# Install more
    # google-chrome \
    # google-cloud-sdk \
    # slack \
    # webhttrack \
    # htop \
    # terminator \
    # pip \

# Configure npm
#TODO test if dir exists 
# mkdir ~/.npm-global
# npm config set prefix '~/.npm-global'


# DO not use pip on arch manjaro, https://forum.manjaro.org/t/problem-with-pip-for-python-package/75411/4
# Use in python virtual env.
# pip install --user awscli --upgrade
# pip install --user thefuck virtualenv virtualenvwrapper

# monitor docker containers 
#TODO build check if installed already
# sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.2/ctop-0.7.2-linux-amd64  -O /usr/local/bin/ctop
# sudo chmod +x /usr/local/bin/ctop

# Set up symlinks.
ln -sfv ".dotfiles/.zshrc" $HOME
ln -sfv ".dotfiles/.vimrc" $HOME

# Set up git
ln -sfv ".dotfiles/git/.gitconfig" $HOME
ln -sfv ".dotfiles/git/.gitignore_global" $HOME
