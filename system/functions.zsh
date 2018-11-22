function extract {
  echo Extracting $1 ...
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xjf $1  ;;
          *.tar.gz)    tar xzf $1  ;;
          *.bz2)       bunzip2 $1  ;;
          *.rar)       unrar x $1    ;;
          *.gz)        gunzip $1   ;;
          *.tar)       tar xf $1   ;;
          *.tbz2)      tar xjf $1  ;;
          *.tgz)       tar xzf $1  ;;
          *.zip)       unzip $1   ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1  ;;
          *)        echo "'$1' cannot be extracted via extract()" ;;
      esac
  else
      echo "'$1' is not a valid file"
  fi
}

#function idea {
#  # check for where the latest version of IDEA is installed
#  IDEA=`ls -1d /Applications/IntelliJ\ * | tail -n1`
#  wd=`pwd`
#
#  # were we given a directory?
#  if [ -d "$1" ]; then
#  #  echo "checking for things in the working dir given"
#    wd=`ls -1d "$1" | head -n1`
#  fi
#
#  # were we given a file?
#  if [ -f "$1" ]; then
#  #  echo "opening '$1'"
#    open -a "$IDEA" "$1"
#  else
#      # let's check for stuff in our working directory.
#      pushd $wd > /dev/null
#
#  # does our working dir have an .idea directory?
#   if [ -d ".idea" ]; then
#   # echo "opening via the .idea dir"
#      open -a "$IDEA" .
#
#    # is there an IDEA project file?
#    elif [ -f *.ipr ]; then
#    # echo "opening via the project file"
#      open -a "$IDEA" `ls -1d *.ipr | head -n1`
#
#    # Is there a pom.xml?
#    elif [ -f pom.xml ]; then
#    # echo "importing from pom"
#      open -a "$IDEA" "pom.xml"
#
#    # can't do anything smart; just open IDEA
#    else
#    # echo 'cbf'
#      open "$IDEA"
#    fi
#
#    popd > /dev/null
#  fi
#}

function getRemoteBranches {
  for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
     git branch --track ${branch#remotes/origin/} $branch
  	done
}


## Print a horizontal rule
rule () {
  printf "%$(tput cols)s\n"|tr " " "─"}}

function killProcessListeningToPort() {
	if [ -z "$1" ]; then
		echo "Usage: searchAndDestroy [numeric port identifier]" >&2
	        return 1
	fi
	lsof -i TCP:$1 | awk '/LISTEN/{print $2}' | xargs kill -9
}

###-begin-yo-completion-###
_yo_completion () {
  local cword line point words si
  read -Ac words
  read -cn cword
  let cword-=1
  read -l line
  read -ln point
  si="$IFS"
  IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                     COMP_LINE="$line" \
                     COMP_POINT="$point" \
                     yo-complete completion -- "${words[@]}" \
                     2>/dev/null)) || return $?
  IFS="$si"
}
compctl -K _yo_completion yo
###-end-yo-completion-###
