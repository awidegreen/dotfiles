 

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
