export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export EDITOR="vim"
# export CLICOLOR=1
# export LSCOLORS=gxfxcxdxbxegedabagacad

# Java
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"

# Python
export WORKON_HOME="$HOME/.envs"
# https://python-guide-cn.readthedocs.io/en/latest/dev/virtualenvs.html
# first have default env created!
source ~/.envs/default/bin/activate
# Python: fuck --yeah
eval $(thefuck --alias)

# npm
export PATH=~/.npm-global/bin:$PATH

# export GOPATH="$HOME/go"
# export GOROOT="/snap/go/3417"

# source $HOME/.rvm/scripts/rvm

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
