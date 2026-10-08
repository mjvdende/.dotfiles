#!/usr/bin/env zsh
set -e

DOTFILES_DIR=${0:A:h}
cd "$DOTFILES_DIR"

SECRETS_FILE="$DOTFILES_DIR/system/secrets.zsh"
if [[ ! -e "$SECRETS_FILE" ]]; then
	/usr/bin/install -m 600 /dev/null "$SECRETS_FILE"
fi
chmod 600 "$SECRETS_FILE"

GITCONFIG_LOCAL="$HOME/.gitconfig.local"
if [[ ! -e "$GITCONFIG_LOCAL" ]]; then
	/usr/bin/install -m 600 /dev/null "$GITCONFIG_LOCAL"
fi

# Set up symlinks.
ln -sfv "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"

# Set up git
ln -sfv "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" "$HOME/.gitignore_global"

# Install dependencies.
source install/brew.sh
source install/node.sh
source install/rust.sh
source install/sdkman.sh
source install/k8s.sh
source install/zsh.sh

# Install the managed shell config last, after installers that may edit .zshrc.
ln -sfv "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

