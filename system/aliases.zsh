# List in color
alias ls="ls -color"

# List in long format, include dotfiles.
alias l="ls -la"

# List in long format, only directories.
alias ld="ls -ld */"

# git - pull all
alias glall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'

# updates on mac
alias brewski='brew update && brew upgrade && brew cleanup -s; brew doctor'

# Docker
alias drm='docker ps -qa | xargs docker rm -f'
alias drmi='docker images -q -f "dangling=true" | xargs  docker rmi'
alias dcom='docker-compose'

# Directories
alias p='cd ~/projects'
alias s='cd ~/schiphol'