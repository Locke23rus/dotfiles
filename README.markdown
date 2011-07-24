Kirill Nikitin Dot Files
========================

    $ git clone git@github.com:Locke23rus/dotfiles.git ~/.dotfiles

Apps
----

https://github.com/creationix/nvm
http://golang.org/doc/install.html

Vim
---

    $ mkdir -p ~/.vim/autoload
    $ mkdir -p ~/.vim/bundle
    $ ln -s ~/libraries/go/misc/vim/ ~/.vim/bundle/go

https://github.com/tpope/vim-pathogen

    $ cd ~/.vim/autoload && wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

https://github.com/scrooloose/nerdtree

    $ cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree

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
    $ ln -s ~/.dotfiles/gemrc ~/.gemrc
    $ ln -s ~/.dotfiles/irbrc ~/.irbrc
    $ ln -s ~/.dotfiles/hgrc ~/.hgrc
    $ ln -s ~/.dotfiles/gitconfig ~/.gitconfig
    $ sudo ln -s  ~/libraries/go/misc/bash/go /etc/bash_completion.d/go
    $ git config --global core.excludesfile ~/.dotfiles/gitignore

