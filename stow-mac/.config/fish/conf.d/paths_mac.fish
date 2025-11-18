fish_add_path --prepend /opt/homebrew/opt/coreutils/bin
fish_add_path --prepend /opt/homebrew/bin
fish_add_path --prepend /usr/local/bin
fish_add_path --append $HOME/go/bin
fish_add_path --prepend $HOME/.cargo/bin
fish_add_path --prepend $HOME/zig
fish_add_path --prepend $HOME/.mix/escripts
fish_add_path --prepend $HOME/.local/bin

set -gx MANPATH /usr/local/man /opt/homebrew/manpages $MANPATH

