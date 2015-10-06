# ssh agent should have been started via systemd user
# see https://wiki.archlinux.org/index.php/SSH_keys#Start_ssh-agent_with_systemd_user
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"