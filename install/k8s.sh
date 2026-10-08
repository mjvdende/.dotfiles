export KREW_ROOT="${KREW_ROOT:-$HOME/.krew}"
KREW_BIN="$KREW_ROOT/bin/kubectl-krew"

if [[ ! -x "$KREW_BIN" ]]; then
  (
    set -e
    set -x
    cd "$(mktemp -d)"
    OS="$(uname | tr '[:upper:]' '[:lower:]')"
    ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')"
    KREW="krew-${OS}_${ARCH}"
    curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz"
    tar zxvf "${KREW}.tar.gz"
    ./"${KREW}" install krew
  )
fi

export PATH="$KREW_ROOT/bin:$PATH"

if ! kubectl krew list | grep -qx neat; then
  kubectl krew install neat
fi