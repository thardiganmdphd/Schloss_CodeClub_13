#!/usr/bin/env bash

# author: Trevor Hardigan
# inputs: name of the file extracted from the archive (without the path)
# outputs: the specified rrnDB file into data/raw

archive=$1

wget -nc --directory-prefix=data/raw/ https://rrndb.umms.med.umich.edu/static/download/"$archive".zip
unzip -n -d data/raw/ data/raw/"$archive".zip
