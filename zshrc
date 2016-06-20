export ZSH=~/.zsh

# Load all of the config files in ~/.zsh/lib end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

##### move this somewhere else???
# load ~/.zshrc.local
[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"

# Put custom $PATH settings into ~/.zprofile or ~/.zshrc.local
export PATH=:$HOME/.cargo/bin:$PATH:$HOME/.bin/:$HOME/.gem/ruby/2.3.0/bin

# rust-related:
#   set cargo home for racerd (ycm)
export CARGO_HOME="$HOME/.cargo"

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

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
