if ! command -v rustup >/dev/null 2>&1; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
fi

export PATH="$HOME/.cargo/bin:$PATH"

if ! command -v rustup >/dev/null 2>&1; then
  print -u2 "Rustup installation did not produce rustup"
  return 1
fi

toolchains="$(rustup toolchain list)"
if [[ "$toolchains" != *stable-* ]]; then
  rustup toolchain install stable
fi