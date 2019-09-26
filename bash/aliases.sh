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
alias git='hub'
alias got='hub'
alias start_pg="pg_ctl -D /usr/local/var/postgres start"
alias stop_pg="pg_ctl -D /usr/local/var/postgres stop"

alias optisvg='svgo --disable=removeXMLProcInst --enable=removeTitle'

# HeiaHeia
alias start_docker='docker-machine start default; eval $(docker-machine env)'
alias start_hh='docker-machine start default; eval $(docker-machine env); cd ~/code/HeiaHeia; docker-compose start'
alias start_ops='docker-machine start default; eval $(docker-machine env); cd ~/code/hh-ops; make run'
alias hh_web='eval $(docker-machine env) && docker exec -u app -it `docker ps | grep heiaheia_web | sed "s/ .*//"` /bin/bash'
alias hh_web_root='eval $(docker-machine env) && docker exec -it `docker ps | grep heiaheia_web | sed "s/ .*//"` /bin/bash'


# alias start_ops='cd ~/code/hh-ops; make run'
# alias start_hh='cd ~/code/HeiaHeia; docker-compose start'
# alias hh_web='docker exec -u app -it `docker ps | grep heiaheia_web | sed "s/ .*//"` /bin/bash'
# alias hh_web_root='docker exec -it `docker ps | grep heiaheia_web | sed "s/ .*//"` /bin/bash'

alias ls='exa'

