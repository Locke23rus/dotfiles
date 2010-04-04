if [ -f ~/.dotfiles/zsh/paths.sh ]; then
  source ~/.dotfiles/zsh/paths.sh
fi

if [ -f ~/.dotfiles/zsh/aliases.sh ]; then
  source ~/.dotfiles/zsh/aliases.sh
fi

if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
