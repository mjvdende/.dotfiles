
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:/Users/mjvdende/.minimesos/bin

export EDITOR="atom"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export DOCKER_HUB_USER="mjvdende"
export PATH=$PATH:/Users/mjvdende/.composer/vendor/bin

# Typo
eval "$(thefuck --alias fuck)"

# Firefox
PATH=/Applications/Firefox.app/Contents/MacOS:$PATH

# Java
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"
# export MAVEN_OPTS="-Dmaven.artifact.threads=8 -Djava.awt.headless=true -Xms256m -Xmx2048m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -Xss512k"

# Ansible
export ANSIBLE_HOSTS=$HOME/.ansible/hosts

# AutoComplete Brew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

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

# flutter & dart
export PATH=/usr/local/flutter/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mjvdende/.sdkman"
[[ -s "/Users/mjvdende/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mjvdende/.sdkman/bin/sdkman-init.sh"

