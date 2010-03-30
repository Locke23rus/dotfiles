# Kirill Nikitin Dot Files #
    
    $ cd ~/ && git clone git://github.com/Locke23rus/dotfiles.git .dotfiles

## Bash ##
Add into ~/.bashrc

    if [ -f ~/.dotfiles/bash/config ]; then
      . ~/.dotfiles/bash/config
    fi

## Ruby ##

### Gems ###

    $ ln -s ~/.dotfiles/gemrc ~/.gemrc
    $ source ~/.gemrc