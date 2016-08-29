export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export EDITOR="atom"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Typo
eval "$(thefuck --alias fuck)"

# Firefox
PATH=/Applications/Firefox.app/Contents/MacOS:$PATH

# Java
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

# Ansible
export ANSIBLE_HOSTS=$HOME/.ansible/hosts

# Quby
export OS_PROJECT_NAME=cicd
export OS_AUTH_URL=http://10.10.15.0:5000/v2.0

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/Users/mjvdende/projects/quby/nxt/infra-utilities/bin

# Go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/projects
export PATH=$PATH:$GOPATH/bin

# Postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/mjvdende/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/mjvdende/google-cloud-sdk/completion.zsh.inc'

# nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mjvdende/.sdkman"
[[ -s "/Users/mjvdende/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mjvdende/.sdkman/bin/sdkman-init.sh"
