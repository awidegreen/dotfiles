export ZSH=~/.zsh

# Load and run compinit
autoload -U compinit
compinit -i

# Load all of the config files in ~/.zsh/lib end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

##### move this somewhere else???
# load ~/.zshrc.local
[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"

# Put custom $PATH settings into ~/.zprofile or ~/.zshrc.local
export PATH=$HOME/.cargo/bin:$PATH:$HOME/.bin/:$HOME/.gem/ruby/2.3.0/bin

# rust-related:
#   set cargo home for racerd (ycm)
export CARGO_HOME="$HOME/.cargo"

export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH

# set term variable to support 256 colors
export TERM=screen-256color

export EDITOR=vim

# set rust-src path for racer
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

genpasswd() {
  local chars=$1
  [[ "$chars" == "" ]] && chars=15
  echo "Generate password with $chars characters"
  tr -dc A-Za-z0-9_\$\%\&\*\? < /dev/urandom | head -c ${chars} | xargs
}
#########

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

# if z exists, source it
[ -f $HOME/._z/z.sh ] && source $HOME/._z/z.sh
