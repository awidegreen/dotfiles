# My dotfiles

This repo contains [@awidegreen's](http://github.com/awidegreen) dotfiles for:

- zsh
- vim
- emacs to come

Under dotfiles/bin there are some useful scripts and tools.

## Usage

    git clone https://github.com/pfleidi/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ./bootstrap.sh

## Installed frameworks

- [OH-MY-ZSH](https://github.com/robbyrussell/oh-my-zsh)
- [vundle](https://github.com/gmarik/vundle)

## Custom PATHs

The dotfiles bundle doesn't contain any custom PATH settings exept for the helpers contained under dotfiles/bin. If you wish to add custom PATHs, put them into ~/.profile.

## Local Overrides

Local ZSH settings can be overridden by creating a ~/.zshrc.local file:

    # Override theme
    export ZSH_THEME="candy"
    # Override plugins
    plugins=(dirpersist git npm deb debian rvm gem)
