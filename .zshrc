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

export EDITOR=nvim

#########

# added by travis gem
[ -f /home/awidegreen/.travis/travis.sh ] && source /home/awidegreen/.travis/travis.sh

# load starship prompt
eval "$(starship init zsh)"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
#source /home/awidegreen/.config/broot/launcher/bash/br
if [ -e /home/arwi/.nix-profile/etc/profile.d/nix.sh ]; then . /home/arwi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

#if [ -d "$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin" ]; then
#PATH="$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin:$PATH"
#fi

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
