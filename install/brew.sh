# Install homebrew.
if [ ! -x "$(which brew)" ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew.
brew update 1>/dev/null
brew upgrade

# Apps to be installed by homebrew.
apps=(
  ansible
  awscli
  bash
  coreutils
  fontconfig
  git
  jq
  node
  nvm
  terraform
  tree
  wget
)
brew install "${apps[@]}"
# brew install mysql --client-only