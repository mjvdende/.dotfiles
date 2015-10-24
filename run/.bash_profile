# If not running interactively return.
[ -z "$PS1" ] && return

# If not running bash return.
if [ -z "$BASH_VERSION" ]; then
  return
fi

# Fetch the OS name.
if [ "$(uname -s)" = "Darwin" ]; then
  OS="OSX"
else
  OS=$(uname -s)
fi

# Get readlink.
READLINK=$(which greadlink || which readlink)

# Get the dotfiles directory.
if [[ -n $BASH_SOURCE && -x "$READLINK" ]]; then
    SCRIPT_PATH=$($READLINK -f "$BASH_SOURCE")
    DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
else
    echo "Unable to find dotfiles, exiting."
    return
fi

# Read the modules.
for DOTFILE in "$DOTFILES_DIR"/system/.{alias,env,function,path,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
