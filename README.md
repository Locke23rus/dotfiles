# Kirill Nikitin Dot Files

    git clone git@github.com:Locke23rus/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles && git submodule update --init

## Bash

In ~/.bashrc, add:

    if [ -f ~/.dotfiles/bash/config.sh ]; then
        . ~/.dotfiles/bash/config.sh
    fi

## Gems

    gem install rails_best_practices
    gem install bundle-audit
    gem install bumbler

## Others

    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/gvimrc ~/.gvimrc
    ln -s ~/.dotfiles/vim ~/.vim
    ln -s ~/.dotfiles/gemrc ~/.gemrc
    ln -s ~/.dotfiles/irbrc ~/.irbrc
    ln -s ~/.dotfiles/hgrc ~/.hgrc
    ln -s ~/.dotfiles/gitconfig ~/.gitconfig
    ln -s ~/.dotfiles/rspec ~/.rspec
    ln -s ~/.dotfiles/ruby-version ~/.ruby-version
    ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
