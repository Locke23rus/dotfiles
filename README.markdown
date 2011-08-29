Kirill Nikitin Dot Files
========================

    $ git clone git@github.com:Locke23rus/dotfiles.git ~/.dotfiles

Apps
----

https://github.com/creationix/nvm
http://golang.org/doc/install.html

Vim
---

    $ ln -s ~/libraries/go/misc/vim/ ~/.vim/bundle/go

Bash
----

In ~/.bashrc, add:

    if [ -f ~/.dotfiles/bash/config ]; then
      . ~/.dotfiles/bash/config
    fi

Others
------

    $ ln -s ~/.dotfiles/vimrc ~/.vimrc
    $ ln -s ~/.dotfiles/gvimrc ~/.gvimrc
    $ ln -s ~/.dotfiles/vim ~/.vim
    $ ln -s ~/.dotfiles/gemrc ~/.gemrc
    $ ln -s ~/.dotfiles/irbrc ~/.irbrc
    $ ln -s ~/.dotfiles/hgrc ~/.hgrc
    $ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
    $ sudo ln -s  ~/libraries/go/misc/bash/go /etc/bash_completion.d/go
    $ git config --global core.excludesfile ~/.dotfiles/gitignore

