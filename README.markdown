Kirill Nikitin Dot Files
========================

    $ git clone git@github.com:Locke23rus/dotfiles.git ~/.dotfiles

Bash
----

In ~/.bashrc, add:

    if [ -f ~/.dotfiles/bash/config ]; then
      . ~/.dotfiles/bash/config
    fi

Fonts
-----

    $ mkdir ~/.fonts && cd .fonts
    $ wget -q http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf
    $ mkfontscale
    $ mkfontdir
    $ fc-cache -fv ~/.fonts
    $ fc-list | grep Monaco

Others
----

    $ ln -s ~/.dotfiles/vimrc ~/.vimrc
    $ ln -s ~/.dotfiles/gemrc ~/.gemrc
    $ ln -s ~/.dotfiles/irbrc ~/.irbrc
    $ ln -s ~/.dotfiles/hgrc ~/.hgrc
    $ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
    $ git config --global core.excludesfile ~/.dotfiles/gitignore

