alias git-update-submodules = git submodule foreach git pull origin master
alias yolo = git push -f
alias git = hub
alias got = hub
alias gut = hub
alias gdiff = git diff --no-index

alias optisvg = svgo --disable=removeXMLProcInst --enable=removeTitle
alias download-audio = youtube-dl -f 'bestaudio' -o '%(title)s.%(ext)s'
alias l = exa
alias reyarn = rm -rf node_modules/ && yarn

alias start_redis = redis-server /usr/local/etc/redis.conf
alias start_livebook = docker run -p 8080:8080 --pull always -v $(pwd):/data:z livebook/livebook
alias start_livebook_dropbox = docker run -p 8080:8080 --pull always -v $HOME/Dropbox/livebook:/data:z livebook/livebook

alias b = bundle
alias b-e = bundle exec
alias c = cargo