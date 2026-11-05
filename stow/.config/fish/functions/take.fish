function take --description 'Create a directory (with parents) and cd into it'
    mkdir -p $argv && cd $argv
end
