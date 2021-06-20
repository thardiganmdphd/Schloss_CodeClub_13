# README

downloaded SILVA v138 SEED file from mothur site

https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138_1.tgz


to download silva seed using command line and unzip

```
wget -nc -P data/references https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138_1.tgz`
mkdir data/references/silva_seed
tar xvzf data/references/silva.seed_v138_1.tgz -C data/references/silva_seed/
```
