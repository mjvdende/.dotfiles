# Install cask.
if [ ! -z "$(brew cask --version)" ]; then
  brew install caskroom/cask/brew-cask
fi

# Apps to be installed by homebrew cask.
apps=(
  iterm2
  google-chrome
  virtualbox
  vagrant
  atom
  slack
  spotify
)
brew cask install "${apps[@]}"
