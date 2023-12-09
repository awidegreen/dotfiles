# autoload -U add-zsh-hook
autoload -Uz vcs_info

function fg-color() {
if [[ -n $1 ]]; then
	if [[ $1 == <0-255> ]]; then
		echo "\x1b[38;5;${1}m"
	fi
fi
}


function bg-color() {
if [[ -n $1 ]]; then
	if [[ $1 == <0-255> ]]; then
		echo "\x1b[48;5;${1}m"
	fi
fi
}

local FMT_BRANCH FMT_ACTION FMT_PATH
local branch_color=$(fg-color 33)
local stage_color=$(fg-color 1)
local hostname_color=$(fg-color 40)

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stangedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
FMT_BRANCH="%f%%b%{$branch_color%}%b%{$stage_color%}%u%c%f" # e.g. master¹²
FMT_ACTION="(%F{cyan}%a%f"   # e.g. (rebase-i)
FMT_PATH="%F{green}%R/%%F{yellow}%S"              # e.g. ~/repo/subdir

# enable VCS systems you use
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*:prompt:*' check-for-changes true

setopt prompt_subst
autoload -U promptinit
promptinit

# Look at http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
# for mor options
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr '+'  # display this when there are staged changes

# special git stuff
zstyle ':vcs_info:git:*' formats       ":${FMT_BRANCH}%m%f"
zstyle ':vcs_info:git:*' actionformats ":${FMT_BRANCH}${FMT_ACTION}%m%f"

#zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }

#PROMPT='[%n@%m %~${vcs_info_msg_0_}] %{$reset_color%}'
PROMPT='[@%{$hostname_color%}%m%{$reset_color%} %~${vcs_info_msg_0_}] %{$reset_color%}'
