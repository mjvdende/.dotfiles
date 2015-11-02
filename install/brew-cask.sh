# Install cask.
if [ ! -z "$(brew cask --version)" ]; then
  brew install caskroom/cask/brew-cask
fi

# Apps to be installed by homebrew cask.
apps=(
atom
  caffeine
  google-chrome
  iterm2
  skype
  slack
  spotify
  transmission
  tunnelblick
  vagrant
  virtualbox
)
brew cask install "${apps[@]}"
