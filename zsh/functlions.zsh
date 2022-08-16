function detect_y() {
  if [[ -f "yarn.lock" ]]; then
    yarn "$*"
	elif [[ -f "package-lock.json" ]]; then
		npm "$*"
  else
    pnpm "$*"
  fi
}
