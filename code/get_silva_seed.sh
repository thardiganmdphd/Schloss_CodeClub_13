#!/usr/bin/env bash

# author: T Hardigan
# inputs: none
# outputs: Places SILVA SEED ref alignment in to data/references/silva_seed
# Because the tgz file contains a README file, we extracted to a directory within the data/references

wget -nc - P data/references https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138_1.tgz
mkdir data/references/silva_seed
tar xvzf data/references/silva.seed_v138_1.tgz -C data/references/silva_seed
