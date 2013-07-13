#!/bin/bash

SESSION=$USER
tmux="tmux -2"

detektorfm=detektor.fm
defpath="~"
devpath="~/development"

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
$tmux new-window -t $SESSION:0 -k -n htopMusic htop 
# split for detektor.fm
$tmux split-window -v -p 10 -t $SESSION:0  detektor.fm

# development
$tmux set -t $SESSION -q default-path $devpath
#  in case, remain-on-exit should not be on for every window, comment out!
$tmux set-window-option -q -t $SESSION set-remain-on-exit off
$tmux new-window -t $SESSION -n development 
$tmux set -t $SESSION -q default-path $defpath

# ssh 
$tmux new-window -t $SESSION -n ssh 

# misc
$tmux new-window -t $SESSION -n misc 

# select first window, second pane
$tmux select-window -t $SESSION:0

# finally attach to session!
$tmux attach -t $SESSION

exit 0;
