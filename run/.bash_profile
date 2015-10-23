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

# Read the modules.
CURRENT_PATH=$(readlink -f "$BASH_SOURCE")
DOTFILES_DIR=$(dirname "$(dirname "$CURRENT_PATH")")
for DOTFILE in "$DOTFILES_DIR"/system/.{alias,env,function,path,prompt}; do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
