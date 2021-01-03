# Source: https://stackoverflow.com/questions/5014823/how-to-profile-a-bash-shell-script-slow-startup/20855353
# 
# Usefull links:
# https://danpker.com/posts/2020/faster-bash-startup/
# https://work.lisk.in/2020/11/20/even-faster-bash-startup.html

# PS4='+ $(date "+%s.%N")\011 '
PS4='+ $EPOCHREALTIME\011 '
exec 3>&2 2>/tmp/bashstart.$$.log
set -x

source ~/.bash_profile

set +x
exec 2>&3 3>&-