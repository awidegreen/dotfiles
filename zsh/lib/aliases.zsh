alias ll='ls -lh'
alias lla='ls -lha'
alias lh='ls -lah'
alias lt='ls -hltr'
alias lltr='lt'
alias ...='cd ../..'

alias grep='grep --color=auto'
alias less="less -r"
alias more="less -r"

# restart pulseaudio (to rescan for network sink)
alias repulse="pulseaudio --kill && sleep 2 && pulseaudio --start"
