# List in color
alias ls="ls -color"

# List in long format, include dotfiles.
alias l="ls -la"

# List in long format, only directories.
alias ld="ls -ld */"

# Go up directories.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# git - pull all
alias glall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'
# updates
alias brewski='brew update && brew upgrade && brew cleanup -s; brew doctor'

# docker
alias gc-docker='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc'
alias drm='docker ps -qa | xargs docker rm -f'
alias drmi='docker images -q -f "dangling=true" | xargs  docker rmi'
alias dcom='docker-compose'

# apps
alias tf='terraform'
alias che='/Users/mjvdende/Applications/eclipse-che-4.0.0-RC11/bin/che.sh'

# Directories
alias p='cd ~/projects'
alias be='cd ~/projects/buildeleven'
alias q='cd ~/projects/quby'
alias pb='cd ~/projects/portbase'
alias nxt='cd ~/projects/quby/nxt'
alias s='cd ~/projects/schiphol'
# Java Home
alias j7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias j8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
