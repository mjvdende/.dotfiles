export SDKMAN_DIR="${SDKMAN_DIR:-$HOME/.sdkman}"

if [[ ! -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]]; then
  curl -fsSL https://get.sdkman.io | bash
fi

if [[ ! -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]]; then
  print -u2 "SDKMAN installation did not produce sdkman-init.sh"
  return 1
fi