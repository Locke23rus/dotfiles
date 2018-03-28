# Ruby and Rails
alias r='rails'
alias b='bundle'
alias b-e='b exec'
alias b-t='b-e rake'
alias b-s='b-e rails s'
alias b-c='b-e rails c'
alias b-db='b-e rails db'
alias b-g='b-e rails g'
alias b-r='b-e rails r'
alias b-migrate='b-t db:migrate && b-t db:test:prepare'
alias b-routes='b-t routes'
alias b-spec='b-e rspec'

alias git-update-submodules='git submodule foreach git pull origin master'
alias yolo='git push -f'
alias got='git'
alias start_pg="pg_ctl -D /usr/local/var/postgres start"

alias optisvg='svgo --disable=removeXMLProcInst --enable=removeTitle'
