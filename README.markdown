# Kirill Nikitin Dot Files #
    
    $ git clone git://github.com/Locke23rus/dotfiles.git ~/.dotfiles

## Zsh ##

    $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    $ cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    $ chsh -s /bin/zsh

## Bash ##
Add into ~/.bashrc

    if [ -f ~/.dotfiles/bash/config ]; then
      . ~/.dotfiles/bash/config
    fi

## Ruby ##

### Gems ###

    $ ln -s ~/.dotfiles/gemrc ~/.gemrc
