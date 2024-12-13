# Install homebrew.
if [ ! -x "$(which brew)" ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Apps to be installed by homebrew.
apps=(
  wget
)
brew install "${apps[@]}"
# brew install mysql --client-only