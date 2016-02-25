if [ -f ~/.dotfiles/bash/paths.sh ]; then
     . ~/.dotfiles/bash/paths.sh
fi

if [ -f ~/.dotfiles/bash/aliases.sh ]; then
     . ~/.dotfiles/bash/aliases.sh
fi

if [ -f ~/.dotfiles/bash/completions.sh ]; then
    . ~/.dotfiles/bash/completions.sh
fi

if [ -f ~/.dotfiles/bash/env.sh ]; then
    . ~/.dotfiles/bash/env.sh
fi

if [ -f ~/.dotfiles/bash/apps.sh ]; then
    . ~/.dotfiles/bash/apps.sh
fi

if [ -f ~/.dotfiles/bash/functions.sh ]; then
    . ~/.dotfiles/bash/functions.sh
fi

# NVM
# if [ -f ~/.nvm/nvm.sh ]; then
#   . ~/.nvm/nvm.sh
# fi

# powerline status bar
# if [ -f `which powerline-daemon` ]; then
#   powerline-daemon -q
#   POWERLINE_BASH_CONTINUATION=1
#   POWERLINE_BASH_SELECT=1
#   . /usr/share/powerline/bash/powerline.sh
# fi


