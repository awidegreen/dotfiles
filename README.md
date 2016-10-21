# My dotfiles

This repo contains [@awidegreen's](http://github.com/awidegreen) dotfiles for:

- zsh
- vim (mapping details below)

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

-----------------

# Vim configuration details

## Vim leader key mapping
This describes the configuration leader mapping including all installed plugings.

I have mapped the leader key to `-`

```viml
let mapleader = "-"
```
## General mappings

| mapping | Description |
| ----------- | --------------------- | 
|<kbd>j</kbd><kbd>k</kbd> | Exit mode, <kbd>ESC</kbd>| 

## General leader mapping

<kbd>__leader__</kbd> + `mapping`

| mapping | vim command | Comment |
| ------- | --------------------- | ------- |
|<kbd>space</kbd> | `:noh` | Remove search highlight |
|<kbd>e</kbd><kbd>v</kbd> | `:vsplit $MYVIMRC` | Opens `$MYVIMRC` on vertical split |
|<kbd>s</kbd><kbd>v</kbd>| `:source $MYVIMRC` | Resources the `$MYVIMRC` |
|<kbd>s</kbd>| `:set spell` | Toggle spelling|
|<kbd>u</kbd><kbd>t</kbd>| `:UpdateTags` | Update Tags |
|<kbd>r</kbd>| `:Make` | runs makeprog |
|<kbd>r</kbd><kbd>b</kbd>| `:Make!` | runs makeprog in background |

## [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

<kbd>__leader__</kbd> + `mapping`

| mapping | YcmCompleter <SubCmd> |
| ----------- | --------------------- |
|<kbd>t</kbd>|[GoTo](https://github.com/Valloric/YouCompleteMe#the-goto-subcommand)           | 
|<kbd>i</kbd>|[GoToInclude](https://github.com/Valloric/YouCompleteMe#the-gotoinclude-subcommand)    | 
|<kbd>d</kbd><kbd>f</kbd>|[GoToDefinition](https://github.com/Valloric/YouCompleteMe#the-gotodefinition-subcommand) | 
|<kbd>d</kbd><kbd>c</kbd>|[GoToDeclaration](https://github.com/Valloric/YouCompleteMe#the-gotodeclaration-subcommand)| 
|<kbd>y</kbd>|[GetType](https://github.com/Valloric/YouCompleteMe#the-gettype-subcommand)        | 
|<kbd>p</kbd>|[GetParent](https://github.com/Valloric/YouCompleteMe#the-getparent-subcommand)      | 
|<kbd>d</kbd>|[GetDoc](https://github.com/Valloric/YouCompleteMe#the-getdoc-subcommand)         | 
|<kbd>f</kbd>|[FixIt](https://github.com/Valloric/YouCompleteMe#the-fixit-subcommand)          |

## [ConqueGDB](Tagba://github.com/vim-scripts/Conque-GDB)

Since conqueGDB heavily uses the leader key, it destroys some of my other 
bindings. Therefore, the `Conque_Leader` is mapped to `\`

```
let g:ConqueGdb_Leader = '\'
```
In cmake projects, one normally builds out-of-source, therefore adjust you 
`makeprg` to `:let &makeprg='(cd build/ && make)'`

<kbd>__cg_leader__</kbd> + `mapping`

| mapping | Description |
| ----------- | --------------------- | 
| <kbd>r</kbd> | run | 
| <kbd>c</kbd> | continue | 
| <kbd>n</kbd> | next | 
| <kbd>s</kbd> | step | 
| <kbd>p</kbd> | print variable under cursor | 
| <kbd>b</kbd> | toggle breakpoint | 
| <kbd>f</kbd> | finish | 
| <kbd>t</kbd> | backtrace | 

## [Ctrl-P](https://github.com/kien/ctrlp.vim) and related

<kbd>__leader__</kbd> + `mapping`

| mapping | Command | Comment |
| ----------- | --------------------- | ------- |
| <kbd>s</kbd><kbd>t</kbd> | `:CtrlPTag` | Open CtrlP tags 'search tag' |
| <kbd>f</kbd><kbd>u</kbd> | `:CtrlPFunky` | Open CtrlP funky |
| <kbd>f</kbd><kbd>U</kbd> | `:execute 'CtrlPFunky ' . expand('<cword>')` | CtrlP funky narrow list to word under cursor|

## [tabular.vim](https://github.com/godlygeek/tabular)

<kbd>__leader__</kbd> + `mapping`

| mapping | Command | Comment |
| ----------- | --------------------- | ------- |
| <kbd>a</kbd><kbd>=</kbd> | `:Tabularize /=` | tabularize based on '=' |
| <kbd>a</kbd><kbd>:</kbd> | `:Tabularize /:\zs` | tabularize based on ':\zy' |

## [Tagbar](https://github.com/majutsushi/tagbar)

<kbd>__leader__</kbd> + `mapping`

| mapping | Command | Comment |
| ----------- | --------------------- | ------- |
| <kbd>t</kbd><kbd>k</kbd> | `:TagbarToggle` | Toggle the tagbar |



