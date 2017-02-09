export GOROOT="/usr/local/opt/go/libexec"
# export GOROOT="$HOME/.local/share/go"
export GOPATH="$HOME/code/go"

PATH="$GOROOT/bin:$PATH"
PATH="$GOPATH/bin:$PATH"
PATH="$HOME/.dotfiles/bin:$PATH"
# PATH="$HOME/.cargo/bin:$PATH"
# PATH="/opt/crystal/bin:$PATH"
# PATH="/usr/local/heroku/bin:$PATH"
PATH="$PATH:`yarn global bin`"

# export LD_LIBRARY_PATH="$HOME/.local/lib"
# export RUST_SRC_PATH=/home/kirill/src/rust/src
export PATH
