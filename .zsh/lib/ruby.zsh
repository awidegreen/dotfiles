# make ruby gems executeables available in PATH
which ruby > /dev/null 2>&1 && PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# set the gem dir to install them in home
export GEM_HOME=$HOME/.gem

