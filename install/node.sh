NVM_VERSION=0.40.4
export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"

if [[ ! -s "$NVM_DIR/nvm.sh" ]]; then
  curl -fsSL "https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh" | bash
fi

if [[ ! -s "$NVM_DIR/nvm.sh" ]]; then
  print -u2 "NVM installation did not produce nvm.sh"
  return 1
fi

source "$NVM_DIR/nvm.sh"
node_version="$(<"$DOTFILES_DIR/.nvmrc")"
nvm install "$node_version"
nvm alias default "$node_version"

if ! npm ls --global --depth=0 npm@11.10.0 @playwright/cli@0.1.18 gitlab-ci-local@4.72.0 >/dev/null 2>&1; then
  npm install --global npm@11.10.0 @playwright/cli@0.1.18 gitlab-ci-local@4.72.0
fi