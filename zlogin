# export GOPATH for dependencies
export GOPATH=~/.go

# export TEXMFHOME for latex tex live enviroment 
export TEXMFHOME=$HOME/.texmf

# include npm bin 
export PATH="$HOME/.node_modules/bin:$PATH"    
export npm_config_prefix=~/.node_modules

# ssh agent should have been started via systemd user
# see https://wiki.archlinux.org/index.php/SSH_keys#Start_ssh-agent_with_systemd_user
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

