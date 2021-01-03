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

# GIT
alias git-update-submodules='git submodule foreach git pull origin master'
alias yolo='git push -f'
alias git='hub'
alias got='hub'
alias gut='hub'

# Services
alias start_pg="pg_ctl -D /usr/local/var/postgres start"
alias stop_pg="pg_ctl -D /usr/local/var/postgres stop"

# Utils
alias optisvg='svgo --disable=removeXMLProcInst --enable=removeTitle'
alias download-audio="youtube-dl -f 'bestaudio' -o '%(title)s.%(ext)s'"
alias gdiff='git diff --no-index'
alias ls='exa'

# SMARTLY
#alias warren_web='pod = kubectl -n kirill-warren get pods | grep "web-" | cut -f 1 -d " "; kubectl -n kirill-warren exec -it $pod bin/rails console'
alias warren_web='docker exec -it `docker ps | grep warren_web | sed "s/ .*//"` /bin/bash'
alias warren_local_box='docker exec -it `docker ps | grep "/warren:" | sed "s/ .*//"` /bin/bash'
alias v1_test='bin/run_backend_docker.sh be-unit-tests /bin/bash'
alias v1='cd ~/code/smartly/smartly-v1'
alias warren='cd ~/code/smartly/warren'
alias al='cd ~/code/smartly/asset-library'
alias fe='cd ~/code/smartly/frontend'
alias graffiti='cd ~/code/smartly/graffiti'
alias graffiti_sh='docker-compose run --rm dev /bin/sh'
alias tl='cd ~/code/smartly/testlab'
alias tlu='cd ~/code/smartly/testlab-ui'
alias ui='cd ~/code/smartly/smartly-ui'
alias e2e_sh='docker-compose run -v $(pwd):/usr/src/app test-e2e /bin/sh'
alias e2e_build='docker-compose up --build test-e2e'
alias openapi_build='docker-compose up --build build-open-api'
