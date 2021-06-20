#!/usr/bin/env bash

# author: Trevor Hardigan
# inputs: name of the file extracted from the archive (without the path)
# outputs: the specified rrnDB file into data/raw

target=$1
filename=`echo $target | sed "s/.*\///"`
path=`echo $target | sed -E "s/(.*\/).*/\1/"`

wget -nc -P "$path" https://rrndb.umms.med.umich.edu/static/download/"$filename".zip
unzip -n -d "$path" "$target".zip

touch "$target"
