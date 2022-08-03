# GIT
alias git-update-submodules='git submodule foreach git pull origin master'
alias yolo='git push -f'
alias git='hub'
alias got='hub'
alias gut='hub'
alias gdiff='git diff --no-index'
alias gdifft='GIT_EXTERNAL_DIFF=difft git diff'


alias optisvg='svgo --disable=removeXMLProcInst --enable=removeTitle'
alias download-audio="youtube-dl -f 'bestaudio' -o '%(title)s.%(ext)s'"
alias ls='exa'

alias start_redis='redis-server /usr/local/etc/redis.conf'
alias start_livebook='docker run -p 8080:8080 --pull always -v $(pwd):/data:z livebook/livebook'
alias start_livebook_dropbox='docker run -p 8080:8080 --pull always -v $HOME/Dropbox/livebook:/data:z livebook/livebook'

# ruby
alias b='bundle'
alias b-e='bundle exec'
alias be='bundle exec'
alias bs='bundle exec rspec'
alias b-spec='bundle exec rspec'

# rust
alias c='cargo'

# node
alias reyarn='rm -rf node_modules/ && yarn'
alias y-corepack='corepack enable && corepack prepare --activate'
alias y='detect_y'

# macOS
alias cpu-temp='sudo powermetrics --samplers smc | grep -i "CPU die temperature"'
