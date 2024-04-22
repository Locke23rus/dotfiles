#alias warren_web='pod = kubectl -n kirill-warren get pods | grep "web-" | cut -f 1 -d " "; kubectl -n kirill-warren exec -it $pod bin/rails console'
alias warren_web='docker exec -it `docker ps | grep warren_web | sed "s/ .*//"` /bin/bash'
alias warren_local_box='docker exec -it `docker ps | grep "/warren:" | sed "s/ .*//"` /bin/bash'
alias v1_test='bin/run_backend_docker.sh be-unit-tests /bin/bash'
alias v1='cd ~/code/smartly/smartly-v1'
alias warren='cd ~/code/smartly/warren'
alias fe='cd ~/code/smartly/frontend'
alias graffiti='cd ~/code/smartly/graffiti'
alias conveyor='cd ~/code/smartly/conveyor'
alias condenser='cd ~/code/smartly/condenser'
alias graffiti_sh='docker-compose run --rm dev /bin/sh'
alias tl='cd ~/code/smartly/testlab'
alias ui='cd ~/code/smartly/smartly-ui'
alias dis='cd ~/code/smartly/distillery'
alias con='cd ~/code/smartly/condenser'
alias e2e_sh='devbox compose run -v $(pwd):/usr/src/app test-e2e /bin/sh'
alias e2e_build='devbox compose up test-e2e'
alias oa_build='devbox compose up build-open-api'
alias ssh_citus='ssh cituscoord01.smartly.io'
alias dcrt='dcr test'
alias dspec='dcr test rspec'
alias dcr='devbox compose run'
alias dcb='devbox compose build'
