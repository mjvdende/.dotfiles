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
alias brewski='brew update && brew upgrade --all && brew cleanup -s; brew doctor'

# docker-machine
alias dm='docker-machine'
alias evalDkr='eval "$(docker-machine env dkr)"'
alias gc-docker='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc'

# apps
alias tf='terraform'
alias sourcetree='open -a SourceTree'
alias che='/Users/mjvdende/Applications/eclipse-che-4.0.0-RC11/bin/che.sh'

# Directories
alias p='cd ~/projects'
alias q='cd ~/projects/quby'
alias nxt='cd ~/projects/quby/nxt'

# Java Home
alias j7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias j8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
