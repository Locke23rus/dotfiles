Kirill Nikitin Dot Files
========================

    $ git clone git@github.com:Locke23rus/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles && git submodule update --init

Apps
----

    $ sudo apt-get install -y ack-grep exuberant-ctags

Vim
---

    $ sudo apt-get install -y vim-gtk vim-puppet

Bash
----

In ~/.bashrc, add:

    if [ -f ~/.dotfiles/bash/config ]; then
      . ~/.dotfiles/bash/config
    fi


Gems
----

    gem install bundler gem-browse


Others
------

    $ ln -s ~/.dotfiles/vimrc ~/.vimrc
    $ ln -s ~/.dotfiles/gvimrc ~/.gvimrc
    $ ln -s ~/.dotfiles/vim ~/.vim
    $ ln -s ~/.dotfiles/gemrc ~/.gemrc
    $ ln -s ~/.dotfiles/irbrc ~/.irbrc
    $ ln -s ~/.dotfiles/hgrc ~/.hgrc
    $ cp ~/.dotfiles/gitconfig ~/.gitconfig
