# GIT
alias git-update-submodules='git submodule foreach git pull origin master'
alias yolo='git push --force-with-lease'
alias got='git'
alias gut='git'
alias gti='git'
alias gd='git diff'
alias gdd='GIT_PAGER=delta git diff'
alias gddd='GIT_EXTERNAL_DIFF=difft git diff'
alias gdiff='git diff --no-index'
alias gci='git commit'
alias gc='git commit'
alias gg='git lol'
alias gdm='git delete-merged-branches; git delete-squashed-branches'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gmm='git merge master'
alias gs='git status'
alias gr='git rebase'
alias grm='gir rebase master'
alias gp='git push'
alias gl='git pull'
alias gsm='git switch main 2>/dev/null; or git switch master 2>/dev/null'
alias grs='git restore'

alias l='eza'
alias ls='eza'
alias ll='eza -la'

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

# kubernetes
alias k='kubectl'

alias e='nvim'
alias hms='home-manager switch'
