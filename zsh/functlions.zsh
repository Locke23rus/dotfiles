function detect_y() {
  if [[ -f "yarn.lock" ]]; then
    yarn "$*"
  else
    pnpm "$*"
  fi
}
