#!/bin/bash

directory=x86_64
dbName=archlinux-repo
options='--sign --new --remove'

rm $directory/$dbName.*


echo "repo-add"
repo-add $options $directory/$dbName.db.tar.gz $directory/*.pkg.tar.xz
# repo-add $options $directory/$dbName.db.tar.gz $directory/*.pkg.tar.zst
#sleep 8
# cp -f $directory/$dbName.db.tar.gz $directory/$dbName.db

echo "####################################"
echo "Repo Updated!!"
echo "####################################"