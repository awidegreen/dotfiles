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
Install powerline
################################################################################

EOF

# install tmux-powerline
tmux_powerline_dir="$HOME/.tmux-powerline"
if [ -d $tmux_powerline_dir ]; then
  printf "tmux-powerline is already installed!\n"
else
  printf "Installing tmux-powerline to $tmux_powerline_dir\n"
  git clone https://github.com/awidegreen/tmux-powerline.git $tmux_powerline_dir
fi

cat << EOF

################################################################################
Install z
################################################################################

EOF

if [ ! -d $HOME/._z ]; then
  printf "Install 'z'..."
  git clone https://github.com/rupa/z.git $HOME/._z
  printf "done!\n"
fi


cat << EOF

################################################################################
Install rust tools (exa, fd and rg)
################################################################################

EOF

if ! has_cmd cargo; then
  install_rust
  source ~/.cargo/env
fi

printf "Install rg, fd and exa... if not present yet"
has_cmd fd  || cargo install -f fd-find
has_cmd exa || cargo install -f exa
has_cmd rg  || cargo install -f ripgrep
has_cmd sk  || cargo install -f skim
printf "done!\n"

cat << EOF

################################################################################
Install vim Plugins with vim-pack
################################################################################

EOF

printf "Initialize vim pack... if not present yet"
if ! has_cmd pack; then
  cargo install -f --git https://github.com/maralla/pack/
  has_cmd clang || install_ycm_req
  pack install
fi

printf "done!\n"

cat << EOF


################################################################################
Install st terminal from sources - see http://st.suckless.org
################################################################################

EOF

export dotdir
has_cmd st &&  $dotdir/st/install.sh

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

