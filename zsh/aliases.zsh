# GIT
alias git-update-submodules='git submodule foreach git pull origin master'
alias yolo='git push --force-with-lease'
alias got='git'
alias gut='git'
alias gdiff='git diff --no-index'
alias gdifft='GIT_EXTERNAL_DIFF=difft git diff'

alias optisvg='svgo --disable=removeXMLProcInst --enable=removeTitle'
alias download-audio="youtube-dl -f 'bestaudio' -o '%(title)s.%(ext)s'"
alias ls='eza'

alias start_redis='redis-server /usr/local/etc/redis.conf'
alias start_livebook='docker run -p 8080:8080 -p 8081:8081 --pull always -v $(pwd):/data:z ghcr.io/livebook-dev/livebook.'
alias start_livebook_dropbox='docker run -p 8080:8080 -p 8081:8081 --pull always -v $HOME/Dropbox/livebook:/data:z ghcr.io/livebook-dev/livebook.'

# ruby
alias b='noglob bundle'
alias b-e='b exec'
alias be='b exec'
alias br='be rake'
alias r='be rails'
alias bs='be rspec'
alias b-spec='be rspec'

# rust
alias c='cargo'

# node
alias reyarn='rm -rf node_modules/ && y install'
alias y-corepack='corepack enable && corepack prepare --activate'
alias y='detect_y'
alias latest-pnpm='corepack prepare pnpm@latest --activate'

# macOS
alias cpu-temp='sudo powermetrics --samplers smc | grep -i "CPU die temperature"'

# kubernetes
alias k='kubectl'

alias e='nvim'
alias hm='home-manager switch'
