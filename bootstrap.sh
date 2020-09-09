#!/bin/bash

# based on bootstrap script from pfleidi
#  https://github.com/pfleidi/dotfiles/

dir=$(dirname $0)

function has_cmd() {
  if command -v $1 >/dev/null 2>&1; then
    return 0
  else
    return 1
  fi
}

function install_rust() {
  echo "install rustup and cargo, "

  if ! has_cmd curl; then
    echo "rustup requires curl... will install it"
    sudo pacman -S curl
  fi
  curl https://sh.rustup.rs -sSf | sh
}

function install_ycm_req() {
  echo "Install vim YouCompleteMe dependencies"
  sudo pacman -S cmake clang clang-tools-extra boost boost-libs python2
}


function setup_tmux() {
  local tmux_p_d="$HOME/.tmux/plugins"
  local powerline_d="$tmux_p_d/tmux-powerline"
  local thumbs_d="$tmux_p_d/tmux-thumbs"
  local yank_d="$tmux_p_d/tmux-yank"

  # install tmux-powerline
  if [ -d $powerline_d ]; then
    printf "tmux-powerline is already installed!\n"
  else
    printf "Installing tmux-powerline to $powerline_d\n"
    git clone https://github.com/awidegreen/tmux-powerline.git $powerline_d
  fi

  # install tmux-thumbs
  if [ -d $thumbs_d ]; then
    printf "tmux-thumbs is already installed!\n"
  else
    printf "Installing tmux-thumbs to $thumbs_d\n"
    git clone https://github.com/fcsonline/tmux-thumbs $thumbs_d
    local old_dir=$(pwd)
    cd $thumbs_d
    cargo build --release
    cd $old_dir
  fi

  # install tmux-yank
  if [ -d $yank_d ]; then
    printf "tmux-yank is already installed!\n"
  else
    printf "Installing tmux-yank to $yank_d\n"
    git clone https://github.com/tmux-plugins/tmux-yank $yank_d
  fi
}

if [ ! -f $dir/bin/realpath ];
then
  echo "realpath does not exists in $dir/bin"
  exit 1
fi

dotdir=$($dir/bin/realpath $dir)

# ignore list "foo bar hello world"
bootstrap_ignore="README.md utils st config"

cat << EOF
################################################################################
Install dotfiles (link dir/files in $dotdir to HOME/.<dfir/file>)
################################################################################

EOF

for file in $dotdir/*; do
  filename=$(basename $file)
  dotfile=$HOME/.$filename
  if [ $filename = $(basename $0) ]; then continue ; fi

  # ignore elements in ignore list
  if echo "${bootstrap_ignore[@]}" | grep --word-regexp "$filename" > /dev/null ; then continue ; fi

  if [ -e $dotfile ]; then
    if [ -L $dotfile ]; then
      printf "$dotfile is already a link!\n"
    else
      printf "$dotfile already exists. Remove it first!\n"
    fi
  else
    printf "Linking $dotfile to $file\n"
    ln -s $file $dotfile
  fi
done

cat << EOF

################################################################################
Install rust tools (exa, fd and rg)
################################################################################

EOF

if ! has_cmd cargo; then
  install_rust
  source ~/.cargo/env
fi

printf "Install rust tools (rg, exa, skim, fd, starship, hexyl) - if not present yet\n"
has_cmd fd  || cargo install -f fd-find
has_cmd exa || cargo install -f exa
has_cmd rg  || cargo install -f ripgrep
has_cmd sk  || cargo install -f skim
has_cmd starship  || cargo install -f starship
has_cmd hexyl  || cargo install -f starship
has_cmd br  || cargo install -f broot
has_cmd delta  || cargo install -f git-delta
has_cmd dutree  || cargo install -f dutree
printf "... done!\n"

cat << EOF


################################################################################
Install tmux plugins
################################################################################

EOF

setup_tmux


cat << EOF

################################################################################
Install vim Plugins with vim-pack
################################################################################

EOF

printf "Initialize vim pack... if not yet present\n"
if ! has_cmd pack; then
  cargo install -f --git https://github.com/maralla/pack/
  has_cmd clang || install_ycm_req
  pack install
fi

printf "done!\n"

cat << EOF


################################################################################
Information
################################################################################

I'm normally using 'Liberation Mono' or Hack font for the terminal.
On Arch, install 'ttf-liberation'.
In order to support powerline symbols for tmux and vim, consider
installing 'Liberation Mono with Powerline Symbolesa' pre-patched fonts,
echo "see https://github.com/Lokaltog/powerline-fonts"
Therefore, download the fonts, put them into ~/.fonts and execute"
fc-cache -vf ~/.fonts - see https://powerline.readthedocs.org/en/latest/fontpatching.html for more details"
################################################################################
EOF

