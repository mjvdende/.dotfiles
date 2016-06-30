export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export EDITOR="atom"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

eval "$(thefuck --alias fuck)"

export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

export ANSIBLE_HOSTS=$HOME/.ansible/hosts

# Quby
export OS_PROJECT_NAME=cicd
export OS_AUTH_URL=http://10.10.15.0:5000/v2.0


# Keys
#ssh-add ~/.ssh/openstack.key &>/dev/null

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/Users/mjvdende/projects/quby/nxt/infra-utilities/bin


# Postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/mjvdende/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/mjvdende/google-cloud-sdk/completion.zsh.inc'

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mjvdende/.sdkman"
[[ -s "/Users/mjvdende/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mjvdende/.sdkman/bin/sdkman-init.sh"
