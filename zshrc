export ZSH=~/.zsh


# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

##### move this somewhere else???
# load ~/.zshrc.local
[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"

# Put custom $PATH settings into ~/.zprofile or ~/.zshrc.local
export PATH=$PATH:$HOME/.bin/

# set term variable to support 256 colors
export TERM=screen-256color

genpasswd() {
  local chars=$1
  [[ "$chars" == "" ]] && chars=15
  echo "Generate password with $chars characters"
  tr -dc A-Za-z0-9_\$\%\&\*\? < /dev/urandom | head -c ${chars} | xargs
}
#########

# Load and run compinit
autoload -U compinit
compinit -i
