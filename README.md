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
| <code>dec2bin</code> | <code>f() {echo &quot;obase=2; $1&quot;&#124;bc};f</code> | 
| <code>dec2hex</code> | <code>f() {echo &quot;obase=16; $1&quot;&#124;bc};f</code> | 
| <code>hex2bin</code> | <code>f() {echo &quot;ibase=16;obase=2; $1&quot;&#124;bc};f</code> | 
| <code>hex2dec</code> | <code>f() {echo &quot;ibase=16; $1&quot;&#124;bc};f</code> | 
| <code>bin2dec</code> | <code>f() {echo &quot;ibase=2; $1&quot;&#124;bc};f</code> | 
| <code>bin2hex</code> | <code>f() {echo &quot;ibase=2;obase=16; $1&quot;&#124;bc};f</code> | 

## aliases in [aliases.git.zsh](zsh/lib/aliases.git.zsh)

| alias | command |
| ----- | ------- | 
| <code>g</code> | <code>git</code> | 
| <code>ga</code> | <code>git add</code> | 
| <code>gaa</code> | <code>git add --all</code> | 
| <code>gapa</code> | <code>git add --patch</code> | 
| <code>gb</code> | <code>git branch</code> | 
| <code>gba</code> | <code>git branch -a</code> | 
| <code>gbd</code> | <code>git branch -d</code> | 
| <code>gbda</code> | <code>git branch --no-color --merged &#124; command grep -vE &quot;^(\&#42;&#124;\s&#42;(master&#124;develop&#124;dev)\s&#42;$)&quot; &#124; command xargs -n 1 git branch -d</code> | 
| <code>gbl</code> | <code>git blame -b -w</code> | 
| <code>gbnm</code> | <code>git branch --no-merged</code> | 
| <code>gbr</code> | <code>git branch --remote</code> | 
| <code>gbs</code> | <code>git bisect</code> | 
| <code>gbsb</code> | <code>git bisect bad</code> | 
| <code>gbsg</code> | <code>git bisect good</code> | 
| <code>gbsr</code> | <code>git bisect reset</code> | 
| <code>gbss</code> | <code>git bisect start</code> | 
| <code>gc</code> | <code>git commit -v</code> | 
| <code>gca</code> | <code>git commit -v -a</code> | 
| <code>gcam</code> | <code>git commit -a -m</code> | 
| <code>gcsm</code> | <code>git commit -s -m</code> | 
| <code>gcb</code> | <code>git checkout -b</code> | 
| <code>gcf</code> | <code>git config --list</code> | 
| <code>gcl</code> | <code>git clone --recursive</code> | 
| <code>gclean</code> | <code>git clean -fd</code> | 
| <code>gpristine</code> | <code>git reset --hard &amp;&amp; git clean -dfx</code> | 
| <code>gcm</code> | <code>git checkout master</code> | 
| <code>gcd</code> | <code>git checkout develop</code> | 
| <code>gcmsg</code> | <code>git commit -m</code> | 
| <code>gco</code> | <code>git checkout</code> | 
| <code>gcount</code> | <code>git shortlog -sn</code> | 
| <code>gcp</code> | <code>git cherry-pick</code> | 
| <code>gcpa</code> | <code>git cherry-pick --abort</code> | 
| <code>gcpc</code> | <code>git cherry-pick --continue</code> | 
| <code>gcs</code> | <code>git commit -S</code> | 
| <code>gd</code> | <code>git diff</code> | 
| <code>gdca</code> | <code>git diff --cached</code> | 
| <code>gdct</code> | <code>git describe --tags `git rev-list --tags --max-count=1`</code> | 
| <code>gdt</code> | <code>git diff-tree --no-commit-id --name-only -r</code> | 
| <code>gdw</code> | <code>git diff --word-diff</code> | 
| <code>gf</code> | <code>git fetch</code> | 
| <code>gfa</code> | <code>git fetch --all --prune</code> | 
| <code>gfo</code> | <code>git fetch origin</code> | 
| <code>gg</code> | <code>git gui citool</code> | 
| <code>gga</code> | <code>git gui citool --amend</code> | 
| <code>ggpur</code> | <code>ggu</code> | 
| <code>ggpull</code> | <code>git pull origin $(git_current_branch)</code> | 
| <code>ggpush</code> | <code>git push origin $(git_current_branch)</code> | 
| <code>ggsup</code> | <code>git branch --set-upstream-to=origin/$(git_current_branch)</code> | 
| <code>gpsup</code> | <code>git push --set-upstream origin $(git_current_branch)</code> | 
| <code>ghh</code> | <code>git help</code> | 
| <code>gignore</code> | <code>git update-index --assume-unchanged</code> | 
| <code>gignored</code> | <code>git ls-files -v &#124; grep &quot;^[[:lower:]]&quot;</code> | 
| <code>gk</code> | <code>\gitk --all --branches</code> | 
| <code>gke</code> | <code>\gitk --all $(git log -g --pretty=%h)</code> | 
| <code>gl</code> | <code>git pull</code> | 
| <code>glg</code> | <code>git log --stat</code> | 
| <code>glgp</code> | <code>git log --stat -p</code> | 
| <code>glgg</code> | <code>git log --graph</code> | 
| <code>glgga</code> | <code>git log --graph --decorate --all</code> | 
| <code>glgm</code> | <code>git log --graph --max-count=10</code> | 
| <code>glo</code> | <code>git log --oneline --decorate</code> | 
| <code>glog</code> | <code>git log --oneline --decorate --graph</code> | 
| <code>gloga</code> | <code>git log --oneline --decorate --graph --all</code> | 
| <code>gm</code> | <code>git merge</code> | 
| <code>gmom</code> | <code>git merge origin/master</code> | 
| <code>gmt</code> | <code>git mergetool --no-prompt</code> | 
| <code>gmtvim</code> | <code>git mergetool --no-prompt --tool=vimdiff</code> | 
| <code>gmum</code> | <code>git merge upstream/master</code> | 
| <code>gp</code> | <code>git push</code> | 
| <code>gpd</code> | <code>git push --dry-run</code> | 
| <code>gpoat</code> | <code>git push origin --all &amp;&amp; git push origin --tags</code> | 
| <code>gpu</code> | <code>git push upstream</code> | 
| <code>gpv</code> | <code>git push -v</code> | 
| <code>gr</code> | <code>git remote</code> | 
| <code>gra</code> | <code>git remote add</code> | 
| <code>grb</code> | <code>git rebase</code> | 
| <code>grba</code> | <code>git rebase --abort</code> | 
| <code>grbc</code> | <code>git rebase --continue</code> | 
| <code>grbi</code> | <code>git rebase -i</code> | 
| <code>grbm</code> | <code>git rebase master</code> | 
| <code>grbs</code> | <code>git rebase --skip</code> | 
| <code>grh</code> | <code>git reset HEAD</code> | 
| <code>grhh</code> | <code>git reset HEAD --hard</code> | 
| <code>grmv</code> | <code>git remote rename</code> | 
| <code>grrm</code> | <code>git remote remove</code> | 
| <code>grset</code> | <code>git remote set-url</code> | 
| <code>grt</code> | <code>cd $(git rev-parse --show-toplevel &#124;&#124; echo &quot;.&quot;)</code> | 
| <code>gru</code> | <code>git reset --</code> | 
| <code>grup</code> | <code>git remote update</code> | 
| <code>grv</code> | <code>git remote -v</code> | 
| <code>gsb</code> | <code>git status -sb</code> | 
| <code>gsd</code> | <code>git svn dcommit</code> | 
| <code>gsi</code> | <code>git submodule init</code> | 
| <code>gsps</code> | <code>git show --pretty=short --show-signature</code> | 
| <code>gsr</code> | <code>git svn rebase</code> | 
| <code>gss</code> | <code>git status -s</code> | 
| <code>gst</code> | <code>git status</code> | 
| <code>gsta</code> | <code>git stash save</code> | 
| <code>gstaa</code> | <code>git stash apply</code> | 
| <code>gstc</code> | <code>git stash clear</code> | 
| <code>gstd</code> | <code>git stash drop</code> | 
| <code>gstl</code> | <code>git stash list</code> | 
| <code>gstp</code> | <code>git stash pop</code> | 
| <code>gsts</code> | <code>git stash show --text</code> | 
| <code>gsu</code> | <code>git submodule update</code> | 
| <code>gts</code> | <code>git tag -s</code> | 
| <code>gtv</code> | <code>git tag &#124; sort -V</code> | 
| <code>gunignore</code> | <code>git update-index --no-assume-unchanged</code> | 
| <code>gunwip</code> | <code>git log -n 1 &#124; grep -q -c &quot;\-\-wip\-\-&quot; &amp;&amp; git reset HEAD~1</code> | 
| <code>gup</code> | <code>git pull --rebase</code> | 
| <code>gupv</code> | <code>git pull --rebase -v</code> | 
| <code>glum</code> | <code>git pull upstream master</code> | 
| <code>gwch</code> | <code>git whatchanged -p --abbrev-commit --pretty=medium</code> | 
| <code>gwip</code> | <code>git add -A; git rm $(git ls-files --deleted) 2&gt; /dev/null; git commit --no-verify -m &quot;--wip--&quot;</code> | 

## aliases in [aliases.zsh](zsh/lib/aliases.zsh)

| alias | command |
| ----- | ------- | 
| <code>ll</code> | <code>ls -lh</code> | 
| <code>lla</code> | <code>ls -lha</code> | 
| <code>lh</code> | <code>ls -lah</code> | 
| <code>lt</code> | <code>ls -hltr</code> | 
| <code>lltr</code> | <code>lt</code> | 
| <code>l</code> | <code>ll</code> | 
| <code>lll</code> | <code>ll</code> | 
| <code>grep</code> | <code>grep --color=auto</code> | 
| <code>finp</code> | <code>f() {find &quot;$1&quot; -iname &quot;${@:2}&quot;};f</code> | 
| <code>cfinp</code> | <code>f() {find . -iname &quot;${@:2}&quot;};f</code> | 
| <code>fin</code> | <code>f() {find &quot;$1&quot; -iname &quot;&#42;${@:2}&#42;&quot;};f</code> | 
| <code>cfin</code> | <code>f() {find . -iname &quot;&#42;${@:1}&#42;&quot;};f</code> | 
| <code>rgp</code> | <code>f() {rg -p &quot;$@&quot; &#124; less -r};f</code> | 

## aliases in [correction.zsh](zsh/lib/correction.zsh)

| alias | command |
| ----- | ------- | 
| <code>cap</code> | <code>nocorrect cap</code> | 
| <code>man</code> | <code>nocorrect man</code> | 
| <code>tree</code> | <code>nocorrect tree</code> | 
| <code>thor</code> | <code>nocorrect thor</code> | 
| <code>mv</code> | <code>nocorrect mv</code> | 
| <code>mysql</code> | <code>nocorrect mysql</code> | 
| <code>mkdir</code> | <code>nocorrect mkdir</code> | 
| <code>gist</code> | <code>nocorrect gist</code> | 
| <code>heroku</code> | <code>nocorrect heroku</code> | 
| <code>ebuild</code> | <code>nocorrect ebuild</code> | 
| <code>hpodder</code> | <code>nocorrect hpodder</code> | 
| <code>vim</code> | <code>nocorrect vim</code> | 
| <code>ssh</code> | <code>nocorrect ssh</code> | 
| <code>pass</code> | <code>nocorrect pass</code> |

