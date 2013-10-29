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

for file in $dotdir/*; do
  filename=$(basename $file)
  dotfile=$HOME/.$filename
  if [ $filename = $(basename $0) -o $filename = "README.md" ]; then continue ; fi
  
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

# set up zsh shell environment
if [ -d $HOME/.oh-my-zsh ]; then
  printf "OH-MY-ZSH is already installed, only updating ...\n"
  zsh $HOME/.oh-my-zsh/tools/upgrade.sh
else
  printf "Installing OH-MY-ZSH\n"
  git clone git://github.com/awidegreen/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# install tmux-powerline
tmux_powerline_dir="$HOME/.tmux-powerline"
if [ -d $tmux_powerline_dir ]; then 
  printf "tmux-powerline is already installed!\n"
else
  printf "Installing tmux-powerline to $tmux_powerline_dir\n"
  git clone https://github.com/erikw/tmux-powerline.git $tmux_powerline_dir
fi

# Install vim bundles
if [ -d $HOME/.vim/bundle/vundle ]; then
printf "Updading vundle ...\n"
  cd $HOME/.vim/bundle/vundle; git pull; cd -
else
  git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

vim -u ~/.vim/bundles.vim +BundleInstall +q +q

