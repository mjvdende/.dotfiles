# Set up symlinks.
ln -sfv ".dotfiles/.zshrc" $HOME
ln -sfv ".dotfiles/.vimrc" $HOME
# mkdir -p $HOME/.vim/colors && cp ".dotfiles/.vim/colors/*.vim" $HOME/.vim/colors/

# Set up git
ln -sfv ".dotfiles/git/.gitconfig" $HOME
ln -sfv ".dotfiles/git/.gitignore_global" $HOME

# brew
source install/brew.sh
source install/brew-cask.sh

# Install shell
if [ ! -d "$ZSH" ]; then
  export ZSH="~/.oh-my-zsh"; sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install sdkman.
if [ ! -e ~/.sdkman/bin/sdkman-init.sh ]; then
  curl -s get.sdkman.io | bash
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# Install Atom packages.
if [ -x "$(which apm)" ]; then
  source install/atom.sh
fi
