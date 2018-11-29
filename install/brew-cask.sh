# Install cask.
if [ ! -z "$(brew cask --version)" ]; then
  brew install caskroom/cask/brew-cask
fi

# Apps to be installed by homebrew cask.
apps=(
  caffeine
  iterm2
  keepassx
  skitch
)
brew cask install "${apps[@]}"
