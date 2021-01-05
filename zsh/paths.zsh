PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="$PATH:$HOME/go/bin"
PATH="$HOME/.dotfiles/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

MANPATH="/usr/local/man:$MANPATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export PATH
export MANPATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/