# My dotfiles

This repo contains [@awidegreen's](http://github.com/awidegreen) dotfiles for:

- zsh
- vim

Under dotfiles/bin there are some useful scripts and tools.

## Usage

    git clone https://github.com/awidegreen/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ./bootstrap.sh

## Installed frameworks

- [vundle](https://github.com/gmarik/vundle)

## Urvxt 
Look at in the [Arch wiki](https://wiki.archlinux.org/index.php/Rxvt-unicode)
for details.

Perl extensions required (mostly AUR):
* urxvt-perls-git
* urxvt-vtwheel
* urxvt-resize-font-git
* urxvt-fullscreen

```
yaourt -S urxvt-perls-git urxvt-vtwheel urxvt-resize-font-git urxvt-fullscreen
```

## Custom PATHs

The dotfiles bundle doesn't contain any custom PATH settings exept for the 
helpers contained under dotfiles/bin. If you wish to add custom PATHs, put them
into ~/.profile.

## Local Overrides

Local ZSH settings can be overridden by creating a ~/.zshrc.local file:
