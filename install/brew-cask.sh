# Install cask.
brew install caskroom/cask/brew-cask

# Apps to be installed by homebrew cask.
apps = (
  iterm2
  google-chrome
  virtualbox
  vagrant
  atom
  slack
  spotify
)
brew cask install "${apps[@]}"
