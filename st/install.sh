#!/bin/sh

[ ! -d "$dotdir" ] &&  dotdir=$(dirname $(readlink -f $0))/..
st_patch="$dotdir/st/0001-aw-st-config_on-0ac68f.patch"

st_repo=`mktemp -dt "st.XXXXXXXXX"`
echo "use $st_repo"
git clone git://git.suckless.org/st $st_repo > /dev/null 2>&1
cd $st_repo
git checkout 0ac685f > /dev/null > /dev/null 2>&1
git apply $st_patch > /dev/null
echo "Going to install st in default /usr/local/"
make -j4 $st_repo > /dev/null
sudo make $st_repo install > /dev/null
cd $dotdir
rm -fr $st_repo

