# List in color
alias ls="ls -color"

# List in long format, include dotfiles.
alias l="ls -la"

# Go up directories.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# git - pull all
alias glall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'
# updates
alias brewski='brew update && brew upgrade && brew cleanup -s; brew doctor'

# docker-machine
alias drm='docker ps -qa | xargs docker rm -f'
alias drmi='docker images -q -f "dangling=true" | xargs  docker rmi'

# Directories
alias p='cd ~/projects'
alias c='cd ~/projects/chess'
alias cli='cd ~/projects/chess/chess-cli'

