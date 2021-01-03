PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="$PATH:$HOME/go/bin"
PATH="$HOME/.dotfiles/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export PATH
export MANPATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
export RUST_SRC_PATH=${HOME}/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
