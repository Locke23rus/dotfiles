if [ -f ~/.dotfiles/bash/paths.sh ]; then
     . ~/.dotfiles/bash/paths.sh
fi

if [ -f ~/.dotfiles/bash/aliases.sh ]; then
     . ~/.dotfiles/bash/aliases.sh
fi

if [ -f ~/.dotfiles/bash/env.sh ]; then
    . ~/.dotfiles/bash/env.sh
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f $(brew --prefix asdf)/asdf.sh ]; then
  . $(brew --prefix asdf)/asdf.sh
fi
