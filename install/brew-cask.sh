# Install cask.
if [ ! -z "$(brew cask --version)" ]; then
  brew install caskroom/cask/brew-cask
fi

# Apps to be installed by homebrew cask.
apps=(
  appium
  android-studio
  atom
  bettertouchtool
  caffeine
  filezilla
  google-chrome
  google-drive
  intellij-idea
  iterm2
  keepassx
  sequel-pro
  skitch
  skype
  slack
  sourcetree
  steam
  postgres
  transmission
  tunnelblick
  vagrant
  virtualbox
)
brew cask install "${apps[@]}"
