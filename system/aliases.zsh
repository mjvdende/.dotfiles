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

# brew updates
alias brewski='brew update && brew upgrade && brew cleanup -s; brew doctor'

# Directories
alias p='cd ~/projects'
alias po='cd ~/projects/postnl'
