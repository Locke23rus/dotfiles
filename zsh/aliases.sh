# Redcar Editor
alias redcar-dev='jruby-1.5.0 $HOME/Applications/redcar/bin/redcar'
alias redcar-install='cd $HOME/Applications && rm -rf ./redcar && git clone git://github.com/danlucraft/redcar.git && cd redcar && git submodule init && git submodule update && jruby-1.5.0 bin/redcar install && jruby-1.5.0 -S rake build'
alias redcar-update='cd $HOME/Applications/redcar && git pull && git submodule update && jruby-1.5.0 -S rake build'

# Reload zsh config
alias reload='source ~/.zshrc'

# Rubygems
alias jgem='jruby -S gem'
#alias cheat='jruby -S cheat'

# Ruby on Rails
alias r='rails'
alias -g M=" -J -m http://gist.github.com/raw/427726/bd2c389cda3fc8a2d37906e561f520606e6bfdca/rails3_template.rb"
