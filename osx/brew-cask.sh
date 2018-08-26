# Install cask.
if [ ! -z "$(brew cask --version)" ]; then
  brew install caskroom/cask/brew-cask
fi

# Apps to be installed by homebrew cask.
apps=(
  appium
  android-studio
  bettertouchtool
  caffeine
  google-chrome
  google-drive
  iterm2
  keepassx
  skitch
  skype
  slack
  steam
  vagrant
  virtualbox
)
brew cask install "${apps[@]}"
