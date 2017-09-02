#alias ls='ls -h'
alias ls="exa"
alias ll='ls -l'
alias lla='ls -la'
alias lt='ls  -l --sort modified'
alias lltr='lt -r'
#alias ll='ls -lh'
#alias lla='ls -lha'
#alias lh='ls -lah'
#alias lt='ls -hltr'
#alias lltr='lt'
alias l='ll'
alias lll='ll'
alias ...='cd ../..'
alias ....='cd ../../..'

alias grep='grep --color=auto'
alias less="less -r"
alias more="less -r"


# restart pulseaudio (to rescan for network sink)
alias repulse="pulseaudio --kill && sleep 2 && pulseaudio --start"


################################################################################
# find aliases
################################################################################
# find with pattern: finp <dir> <pattern>
alias finp='f() {find "$1" -iname "${@:2}"};f'
# find with pattern in cwd: finp <pattern>
alias cfinp='f() {find . -iname "${@:2}"};f'

# find assuming "**": finp <dir> <term>
alias fin='f() {find "$1" -iname "*${@:2}*"};f'
# find in cwd assuming "**": finp <term>
alias cfin='f() {find . -iname "*${@:1}*"};f'

################################################################################
# grep a-likes
################################################################################

# map ag to rg and make ag available via _ag
alias rgp='f() {rg -p "$@" | less -r};f'

alias _ag="ag --pager=\"less -r\""
alias agp="rgp"
alias ag="rg"
