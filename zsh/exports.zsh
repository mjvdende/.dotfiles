export EDITOR="atom"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

export ANSIBLE_HOSTS=$HOME/.ansible/hosts

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mjvdende/.sdkman"
[[ -s "/Users/mjvdende/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mjvdende/.sdkman/bin/sdkman-init.sh"
