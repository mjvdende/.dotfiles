source run/.bash_profile

# Set up symlinks.
ln -sfv ".dotfiles/run/.bash_profile" ~
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
