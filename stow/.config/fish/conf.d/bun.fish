export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

if not contains "$BUN_INSTALL/bin" $PATH
    set -x PATH "$BUN_INSTALL/bin" $PATH
end
