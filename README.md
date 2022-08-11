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

    ln -s ~/.dotfiles/gemrc ~/.gemrc
    ln -s ~/.dotfiles/irbrc ~/.irbrc
    ln -s ~/.dotfiles/gitconfig ~/.gitconfig
    ln -s ~/.dotfiles/rspec ~/.rspec
    ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
    ln -s ~/.dotfiles/zshrc ~/.zshrc
    ln -s ~/.dotfiles/csgo.cfg ~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/cfg/autoexec.cfg
    ln -s ~/.dotfiles/nu/config.nu ~/.config/nushell/config.nu
    ln -s ~/.dotfiles/nu/env.nu ~/.config/nushell/env.nu
    ln -s ~/.dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml
    ln -s ~/.dotfiles/helix.toml ~/.config/helix/config.toml
