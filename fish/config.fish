# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
set fish_custom $HOME/.dotfiles/fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set fish_greeting # hide greeting message

. /usr/local/share/fry/fry.fish
. ~/.dotfiles/fish/aliases.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
# Theme 'robbyrussell'
# Plugin 'theme'
Plugin 'balias'
Plugin 'fry'
