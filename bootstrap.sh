#!/bin/bash

# based on bootstrap script from pfleidi
#  https://github.com/pfleidi/dotfiles/

dir=$(dirname $0)

if [ ! -f $dir/bin/realpath ];
then
  echo "realpath does not exists in $dir/bin"
  exit 1
fi

dotdir=$($dir/bin/realpath $dir)

# ignore list "foo bar hello world"
bootstrap_ignore="README.md utils"

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


# install tmux-powerline
tmux_powerline_dir="$HOME/.tmux-powerline"
if [ -d $tmux_powerline_dir ]; then
  printf "tmux-powerline is already installed!\n"
else
  printf "Installing tmux-powerline to $tmux_powerline_dir\n"
  git clone https://github.com/awidegreen/tmux-powerline.git $tmux_powerline_dir
fi

# Install vim bundles
if [ -d $HOME/.vim/bundle/vundle ]; then
printf "Updading vundle ...\n"
  cd $HOME/.vim/bundle/vundle; git pull; cd -
else
  git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

vim -u ~/.vim/bundles.vim +BundleInstall +q +q

echo "I'm normally using 'Liberation Mono' font for the terminal."
echo "On Arch, install 'ttf-liberation'."
echo "In order to support powerline symbols for tmux and vim, consider installing 'Liberation Mono with Powerline Symbolesa' pre-patched fonts, see https://github.com/Lokaltog/powerline-fonts"
echo "Therefore, download the fonts, put them into ~/.fonts and execute fc-cache -vf ~/.fonts - see https://powerline.readthedocs.org/en/latest/fontpatching.html for more details"

