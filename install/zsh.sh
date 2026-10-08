export ZSH="${ZSH:-$HOME/.oh-my-zsh}"
if [[ ! -d "$ZSH" ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

export ZSH_CUSTOM="${ZSH_CUSTOM:-$ZSH/custom}"
mkdir -p "$ZSH_CUSTOM/plugins"

_install_zsh_plugin() {
  local repository="$1"
  local name="$2"
  local target="$ZSH_CUSTOM/plugins/$name"
  if [[ ! -d "$target" ]]; then
    git clone "$repository" "$target"
  fi
}

_install_zsh_plugin https://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting
_install_zsh_plugin https://github.com/zsh-users/zsh-autosuggestions zsh-autosuggestions
_install_zsh_plugin https://github.com/lincheney/fzf-tab-completion.git fzf-tab-completion
unfunction _install_zsh_plugin