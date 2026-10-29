# tell Zsh to treat the $PATH as a unique set
typeset -U PATH path fpath

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.local/bin:$PATH"

if [ -d "/opt/homebrew/bin" ]; then
    export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
fi

export EDITOR="code"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# intellij
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

# Rust lang
export PATH="$HOME/.cargo/bin:$PATH"

# Node
export PATH=~/.npm-global/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"

# k8s
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Locally installed application CLIs
for app_bin in \
    "$HOME/.antigravity/antigravity/bin" \
    "$HOME/.opencode/bin" \
    "$HOME/.antigravity-ide/antigravity-ide/bin"; do
    if [[ -d "$app_bin" ]]; then
        export PATH="$app_bin:$PATH"
    fi
done

# Contract-specific settings are loaded from the ignored .env file.
export CONTRACT="${CONTRACT:-vandenendeIT}"
export CONTRACT_EMAIL="${CONTRACT_EMAIL:-}"
export CONTRACT_ART_USER="${CONTRACT_ART_USER:-}"

CONTRACT_PROJECT_DIR="${HOME}/projects/${(L)CONTRACT}"
export CONTRACT_PROJECT_DIR
export KDBX="${CONTRACT_KEEPASS_DATABASE:-${CONTRACT_PROJECT_DIR}/keepass/${CONTRACT}_Robot_KeePass.kdbx}"
export KEY="${CONTRACT_KEEPASS_KEY:-${CONTRACT_PROJECT_DIR}/keepass/${CONTRACT}_Robot_KeePass.key}"

# JVM
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"