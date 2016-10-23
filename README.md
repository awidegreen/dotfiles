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


-----------------

# Zsh configuration details

## aliases in [aliases.conversion.zsh](zsh/lib/aliases.conversion.zsh)

| alias | command |
| ----- | ------- | 
| `dec2bin` | `f() {echo "obase=2; $1"&#124;bc};f` | 
| `dec2hex` | `f() {echo "obase=16; $1"&#124;bc};f` | 
| `hex2bin` | `f() {echo "ibase=16;obase=2; $1"&#124;bc};f` | 
| `hex2dec` | `f() {echo "ibase=16; $1"&#124;bc};f` | 
| `bin2dec` | `f() {echo "ibase=2; $1"&#124;bc};f` | 
| `bin2hex` | `f() {echo "ibase=2;obase=16; $1"&#124;bc};f` | 

## aliases in [aliases.git.zsh](zsh/lib/aliases.git.zsh)

| alias | command |
| ----- | ------- | 
| `g` | `git` | 
| `ga` | `git add` | 
| `gaa` | `git add --all` | 
| `gapa` | `git add --patch` | 
| `gb` | `git branch` | 
| `gba` | `git branch -a` | 
| `gbd` | `git branch -d` | 
| `gbda` | `git branch --no-color --merged &#124; command grep -vE "^(\*&#124;\s*(master&#124;develop&#124;dev)\s*$)" &#124; command xargs -n 1 git branch -d` | 
| `gbl` | `git blame -b -w` | 
| `gbnm` | `git branch --no-merged` | 
| `gbr` | `git branch --remote` | 
| `gbs` | `git bisect` | 
| `gbsb` | `git bisect bad` | 
| `gbsg` | `git bisect good` | 
| `gbsr` | `git bisect reset` | 
| `gbss` | `git bisect start` | 
| `gc` | `git commit -v` | 
| `gca` | `git commit -v -a` | 
| `gcam` | `git commit -a -m` | 
| `gcsm` | `git commit -s -m` | 
| `gcb` | `git checkout -b` | 
| `gcf` | `git config --list` | 
| `gcl` | `git clone --recursive` | 
| `gclean` | `git clean -fd` | 
| `gpristine` | `git reset --hard && git clean -dfx` | 
| `gcm` | `git checkout master` | 
| `gcd` | `git checkout develop` | 
| `gcmsg` | `git commit -m` | 
| `gco` | `git checkout` | 
| `gcount` | `git shortlog -sn` | 
| `gcp` | `git cherry-pick` | 
| `gcpa` | `git cherry-pick --abort` | 
| `gcpc` | `git cherry-pick --continue` | 
| `gcs` | `git commit -S` | 
| `gd` | `git diff` | 
| `gdca` | `git diff --cached` | 
| `gdct` | `git describe --tags `git rev-list --tags --max-count=1`` | 
| `gdt` | `git diff-tree --no-commit-id --name-only -r` | 
| `gdw` | `git diff --word-diff` | 
| `gf` | `git fetch` | 
| `gfa` | `git fetch --all --prune` | 
| `gfo` | `git fetch origin` | 
| `gg` | `git gui citool` | 
| `gga` | `git gui citool --amend` | 
| `ggpur` | `ggu` | 
| `ggpull` | `git pull origin $(git_current_branch)` | 
| `ggpush` | `git push origin $(git_current_branch)` | 
| `ggsup` | `git branch --set-upstream-to=origin/$(git_current_branch)` | 
| `gpsup` | `git push --set-upstream origin $(git_current_branch)` | 
| `ghh` | `git help` | 
| `gignore` | `git update-index --assume-unchanged` | 
| `gignored` | `git ls-files -v &#124; grep "^[[:lower:]]"` | 
| `gk` | `\gitk --all --branches` | 
| `gke` | `\gitk --all $(git log -g --pretty=%h)` | 
| `gl` | `git pull` | 
| `glg` | `git log --stat` | 
| `glgp` | `git log --stat -p` | 
| `glgg` | `git log --graph` | 
| `glgga` | `git log --graph --decorate --all` | 
| `glgm` | `git log --graph --max-count=10` | 
| `glo` | `git log --oneline --decorate` | 
| `glog` | `git log --oneline --decorate --graph` | 
| `gloga` | `git log --oneline --decorate --graph --all` | 
| `gm` | `git merge` | 
| `gmom` | `git merge origin/master` | 
| `gmt` | `git mergetool --no-prompt` | 
| `gmtvim` | `git mergetool --no-prompt --tool=vimdiff` | 
| `gmum` | `git merge upstream/master` | 
| `gp` | `git push` | 
| `gpd` | `git push --dry-run` | 
| `gpoat` | `git push origin --all && git push origin --tags` | 
| `gpu` | `git push upstream` | 
| `gpv` | `git push -v` | 
| `gr` | `git remote` | 
| `gra` | `git remote add` | 
| `grb` | `git rebase` | 
| `grba` | `git rebase --abort` | 
| `grbc` | `git rebase --continue` | 
| `grbi` | `git rebase -i` | 
| `grbm` | `git rebase master` | 
| `grbs` | `git rebase --skip` | 
| `grh` | `git reset HEAD` | 
| `grhh` | `git reset HEAD --hard` | 
| `grmv` | `git remote rename` | 
| `grrm` | `git remote remove` | 
| `grset` | `git remote set-url` | 
| `grt` | `cd $(git rev-parse --show-toplevel &#124;&#124; echo ".")` | 
| `gru` | `git reset --` | 
| `grup` | `git remote update` | 
| `grv` | `git remote -v` | 
| `gsb` | `git status -sb` | 
| `gsd` | `git svn dcommit` | 
| `gsi` | `git submodule init` | 
| `gsps` | `git show --pretty=short --show-signature` | 
| `gsr` | `git svn rebase` | 
| `gss` | `git status -s` | 
| `gst` | `git status` | 
| `gsta` | `git stash save` | 
| `gstaa` | `git stash apply` | 
| `gstc` | `git stash clear` | 
| `gstd` | `git stash drop` | 
| `gstl` | `git stash list` | 
| `gstp` | `git stash pop` | 
| `gsts` | `git stash show --text` | 
| `gsu` | `git submodule update` | 
| `gts` | `git tag -s` | 
| `gtv` | `git tag &#124; sort -V` | 
| `gunignore` | `git update-index --no-assume-unchanged` | 
| `gunwip` | `git log -n 1 &#124; grep -q -c "\-\-wip\-\-" && git reset HEAD~1` | 
| `gup` | `git pull --rebase` | 
| `gupv` | `git pull --rebase -v` | 
| `glum` | `git pull upstream master` | 
| `gwch` | `git whatchanged -p --abbrev-commit --pretty=medium` | 
| `gwip` | `git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip--"` | 

## aliases in [aliases.zsh](zsh/lib/aliases.zsh)

| alias | command |
| ----- | ------- | 
| `ll` | `ls -lh` | 
| `lla` | `ls -lha` | 
| `lh` | `ls -lah` | 
| `lt` | `ls -hltr` | 
| `lltr` | `lt` | 
| `l` | `ll` | 
| `lll` | `ll` | 
| `grep` | `grep --color=auto` | 
| `finp` | `f() {find "$1" -iname "${@:2}"};f` | 
| `cfinp` | `f() {find . -iname "${@:2}"};f` | 
| `fin` | `f() {find "$1" -iname "*${@:2}*"};f` | 
| `cfin` | `f() {find . -iname "*${@:1}*"};f` | 
| `rgp` | `f() {rg -p "$@" &#124; less -r};f` | 

## aliases in [correction.zsh](zsh/lib/correction.zsh)

| alias | command |
| ----- | ------- | 
| `cap` | `nocorrect cap` | 
| `man` | `nocorrect man` | 
| `tree` | `nocorrect tree` | 
| `thor` | `nocorrect thor` | 
| `mv` | `nocorrect mv` | 
| `mysql` | `nocorrect mysql` | 
| `mkdir` | `nocorrect mkdir` | 
| `gist` | `nocorrect gist` | 
| `heroku` | `nocorrect heroku` | 
| `ebuild` | `nocorrect ebuild` | 
| `hpodder` | `nocorrect hpodder` | 
| `vim` | `nocorrect vim` | 
| `ssh` | `nocorrect ssh` | 
| `pass` | `nocorrect pass` |
