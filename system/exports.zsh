export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:"

export EDITOR="code"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Python - pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Optional: Customize virtual environment prompt
export VIRTUAL_ENV_PROMPT="[venv - \$(python --version | awk '{print $2'})] "

# Poetry - add Poetry's bin directory to PATH
export PATH="/Users/webfabrik/.local/bin:$PATH"

# Poetry - prioritize .venv/bin in PATH if it exists
if [[ -d "./.venv/bin" ]]; then
  export PATH="./.venv/bin:$PATH"
fi

# Poetry - use pyenv's Python for Poetry
alias poetry="pyenv exec poetry"

# .NET
export PATH="$PATH:$HOME/.dotnet/tools"

# Node
export PATH=~/.npm-global/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# JVM
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
