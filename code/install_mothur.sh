#!/usr/bin/env bash

# author: T Hardigan
# inputs: none
# outputs: installs mothur
# automates the installation of mothur into code folder

wget -P code/mothur -nc https://github.com/mothur/mothur/releases/download/v1.45.3/Mothur.OSX-10.14.zip
unzip -n -d code/ code/mothur/Mothur.OSX-10.14.zip

if [[ $? -eq 0 ]]
then
  touch code/mothur/mothur  
else
  echo "FAIL: Were not able to successfully install mothur"
fi
