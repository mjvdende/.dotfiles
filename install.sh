source run/.bash_profile

# Set up symlinks.
if [ "$(uname)" == "Darwin" ]; then
  ln -sfv ".dotfiles/run/.bash_profile" ~/.bash_profile
else
  ln -sfv ".dotfiles/run/.bash_profile" ~/.bashrc
fi

ln -sfv ".dotfiles/run/.inputrc" ~
ln -sfv ".dotfiles/git/.gitconfig" ~
ln -sfv ".dotfiles/git/.gitignore_global" ~

if [ "$(uname)" == "Darwin" ]; then
  # Set defaults.
  source osx/defaults.sh
  source osx/dock.sh

  # Install software.
  source install/brew.sh
  source install/brew-cask.sh
fi
