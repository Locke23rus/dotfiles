PS4='+ $EPOCHREALTIME\011 '
# PS4='+ $(date "+%s.%N")\011 '
exec 3>&2 2>/tmp/bashstart.$$.log
set -x

source ~/.bash_profile

set +x
exec 2>&3 3>&-