# Install cask.
if [ ! -z "$(brew cask --version)" ]; then
  brew install caskroom/cask/brew-cask
fi

# Apps to be installed by homebrew cask.
apps=(
  atom
  google-chrome
  iterm2
  sequel-pro
  skype
  slack
  transmission
  tunnelblick
  vagrant
  virtualbox
  google-drive
)
brew cask install "${apps[@]}"
