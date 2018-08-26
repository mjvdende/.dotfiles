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
  md5sha1sum
  node
  nvm
  packer
  terraform
  tree
  wget
  fleetctl
  spark
)
brew install "${apps[@]}"
brew install mysql --client-only

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight

# Fix nvm.
if [ ! -d ~/.nvm ]; then
  mkdir ~/.nvm
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
fi
