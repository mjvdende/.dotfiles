# List in color
alias ls="ls --color"

# List in long format, include dotfiles.
alias l="ls -la"

# List in long format, only directories.
alias ld="ls -ld */"

# git - pull all
alias glall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'

# Docker
alias drm='docker ps -qa | xargs docker rm -f'
alias drmi='docker images -q -f "dangling=true" | xargs  docker rmi'
alias dkrrh='docker ps -qa | xargs docker rm -f && docker images -q -f "dangling=true" | xargs  docker rmi'
# Docker apps
alias swagger='docker run -d -p 80:8080 swaggerapi/swagger-editor'

# Directories
alias p='cd ~/projects'
alias e='cd ~/projects/eneco'

