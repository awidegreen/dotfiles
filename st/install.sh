#!/bin/sh

st_config="$dotdir/st/config.h"
st_repo=`mktemp -dt "st.XXXXXXXXX"`
git clone git://git.suckless.org/st $st_repo &> /dev/null
cp $st_config $st_repo
echo "Going to install st in default /usr/local/"
make -C $st_repo &> /dev/null
sudo make -C$st_repo install &> /dev/null
rm -fr $st_repo

