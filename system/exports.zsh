export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export EDITOR="code"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# npm
export PATH=~/.npm-global/bin:$PATH

# fuck --yeah
eval $(thefuck --alias)

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"