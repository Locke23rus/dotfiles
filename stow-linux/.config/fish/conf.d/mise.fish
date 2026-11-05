# conf.d files are sourced alphabetically and this file runs before paths.fish,
# so ~/.local/bin may not be on PATH yet — ensure it ourselves before activating.
if test -x "$HOME/.local/bin/mise"
  if not contains "$HOME/.local/bin" $PATH
    set -x PATH "$HOME/.local/bin" $PATH
  end
  if status is-interactive
    mise activate fish | source
  else
    mise activate fish --shims | source
  end
end
