if [ -f ~/.dotfiles/bash/paths.sh ]; then
     . ~/.dotfiles/bash/paths.sh
fi

if [ -f ~/.dotfiles/bash/aliases.sh ]; then
     . ~/.dotfiles/bash/aliases.sh
fi

if [ -f ~/.dotfiles/bash/env.sh ]; then
    . ~/.dotfiles/bash/env.sh
fi

if [ -f ~/.dotfiles/bash/functions.sh ]; then
    . ~/.dotfiles/bash/functions.sh
fi

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f $(brew --prefix asdf)/asdf.sh ]; then
  . $(brew --prefix asdf)/asdf.sh
fi
