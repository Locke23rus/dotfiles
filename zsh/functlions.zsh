function detect_y() {
  if [[ -f "yarn.lock" ]]; then
    yarn "$*"
	elif [[ -f "package-lock.json" ]]; then
		npm "$*"
  else
    pnpm "$*"
  fi
}

function debug-toolbox() {
  local pod
  pod=$(kubectl get pods -n debug-toolbox -o name | grep -m1 debug-toolbox | cut -d'/' -f 2)
  kubectl exec -n debug-toolbox -it "$pod" -- /bin/bash
}
