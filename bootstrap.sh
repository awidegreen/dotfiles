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
  git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# Install vim bundles
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u ~/.vim/bundles.vim +BundleInstall +q +q

