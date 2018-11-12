export ZSH=~/.zsh

fpath=(${ZSH}/completions $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

# Load all of the config files in ~/.zsh/lib end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

##### move this somewhere else???
# load ~/.zshrc.local
[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"

export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH

# set term variable to support 256 colors
export TERM=screen-256color

export EDITOR=vim

#########

# if z exists, source it
[ -f $HOME/._z/z.sh ] && source $HOME/._z/z.sh

# added by travis gem
[ -f /home/awidegreen/.travis/travis.sh ] && source /home/awidegreen/.travis/travis.sh
