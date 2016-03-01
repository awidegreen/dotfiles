#!/bin/sh

function has_cmd() {
   if command -v $1 >/dev/null 2>&1; then 
      echo "true"
   else
      echo "false"
   fi
}

#### main #####

# define vars
SESSION=$USER
if [ $1 ]; then 
   echo "Session name forced: $1"
   SESSION=$1
   sleep 1
fi

tmux="tmux -2"

detektorfm=detektor.fm
if_cmd="vnstat"
defpath="~"
devpath="~/development"

top_cmd="top"
if $(has_cmd "htop") == "true"; then
   top_cmd="htop"
fi

# init tmux 
$tmux has-session -t $SESSION &>/dev/null
if [ $? -eq 0 ]; then
    echo "Session $SESSION already exists. Attaching."
    sleep 1
    $tmux attach -t $SESSION
    exit 0;
fi

$tmux new-session -d -s $SESSION  
# new window with htop and detektorfm
#   remain on exit is on here, if program closed, respawn pane: bind to F5
$tmux set-window-option -q -t $SESSION set-remain-on-exit on
# if htop exists, use it otherwise top
$tmux new-window -t $SESSION:0 -k -n htopMusic $top_cmd 
# split for vnstat
if $(has_cmd $if_cmd) == "true"; then 
   $tmux split-window -v -p 20 -t $SESSION:0  "$if_cmd -l"
fi 
# split for detektor.fm
if $(has_cmd $detektorfm) == "true"; then 
   $tmux split-window -v -p 50 -t $SESSION:0 $detektorfm
fi

# show systemd journal
$tmux new-window -t $SESSION -k -n syslog 'exec journalctl -afn 100'

### make the following windows close-able
#  in case, remain-on-exit should not be on for every window, comment out!
$tmux set-window-option -q -t $SESSION set-remain-on-exit off

# ssh 
$tmux new-window -t $SESSION -n ssh 

# weechat 
$tmux new-window -t $SESSION -k -n irc  weechat

# development
$tmux set -t $SESSION -q default-path $devpath
$tmux new-window -t $SESSION -n development 
$tmux set -t $SESSION -q default-path $defpath


# irssi

# misc
$tmux new-window -t $SESSION -n misc 

# select first window, second pane
$tmux select-window -t $SESSION:0

# finally attach to session!
$tmux attach -t $SESSION

exit 0;
