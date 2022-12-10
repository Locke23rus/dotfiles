PATH="/opt/homebrew/opt/coreutils/bin:$PATH"
PATH="/opt/homebrew/bin:$PATH"
PATH="/usrl/local/bin:$PATH"
PATH="$PATH:$HOME/go/bin"
PATH="$HOME/.dotfiles/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.mix/escripts:$PATH"
PATH="$HOME/.local/share/gem/ruby/3.1.0/bin:$PATH"

MANPATH="/usr/local/man:$MANPATH"
MANPATH="/opt/homebrew/manpages:$MANPATH"

export PATH
export MANPATH

export BAT_CONFIG_PATH="$HOME/.dotfiles/bat.conf"
export LIVEBOOK_ROOT_PATH="$HOME/Dropbox/livebook"
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}
