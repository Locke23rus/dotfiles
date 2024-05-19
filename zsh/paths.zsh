PATH="/opt/homebrew/opt/coreutils/bin:$PATH"
PATH="/opt/homebrew/bin:$PATH"
PATH="/usrl/local/bin:$PATH"
PATH="$PATH:$HOME/go/bin"
PATH="$HOME/.dotfiles/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/zig:$PATH"
PATH="$HOME/.mix/escripts:$PATH"
PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
# Extra paths for v1
PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"

MANPATH="/usr/local/man:$MANPATH"
MANPATH="/opt/homebrew/manpages:$MANPATH"

export PATH
export MANPATH

export LIVEBOOK_ROOT_PATH="$HOME/Dropbox/livebook"
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}
