# Kirill Nikitin Dot Files #
    
    $ git clone git://github.com/Locke23rus/dotfiles.git ~/.dotfiles

## Zsh ##

    $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    $ cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    
To change the default shell to zsh, run:

    $ chsh -s /bin/zsh

In ~/.zshrc, add:

    if [ -f ~/.dotfiles/zsh/config.sh ]; then
      source ~/.dotfiles/zsh/config.sh
    fi

## Bash ##

In ~/.bashrc, add:

    if [ -f ~/.dotfiles/bash/config ]; then
      . ~/.dotfiles/bash/config
    fi

## Ruby ##

### RVM ###

    mkdir -p ~/.rvm/src/ && cd ~/.rvm/src && rm -rf ./rvm/ && git clone --depth 1 git://github.com/wayneeseguin/rvm.git && cd rvm && ./install

### Gems ###

    $ ln -s ~/.dotfiles/gemrc ~/.gemrc

## Git ##

    $ git config --global user.name "Name Surname"
    $ git config --global user.email "mail@example.com"
    $ git config --global github.user githubusername
    $ git config --global github.token individualapikey


