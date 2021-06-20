#!/usr/bin/env bash

# author: Trevor Hardigan
# dependency:  data/raw/rrnDB-5.7_16S_rRNA.align
# inputs: the target name, which is really the output
#             data/region/rrnDB.aligned



target=$1
region=`echo "$target" | sed -E "s/.*\/(.*)\/.*/\1/"` #data/v19
path=` echo "$target" | sed -E "s/(.*\/.*)\/.*/\1/"`

if [[ "$region" = "v19" ]]
then
  start=1044
  end=43116
  echo "region: $region"
elif [[ "$region" = "v4" ]]
then
  start=13862
  end=23444
  echo "region: $region"
elif [[ "$region" = "v34" ]]
then
  start=6428
  end=23444
  echo "region: $region"
elif [[ "$region" = "v45" ]]
then
  start=13862
  end=27659
  echo "region: $region"
else
  echo "FAIL: We dont have the coordinates for $region"
  exit 1
fi

mkdir -p $path

code/mothur/mothur "#pcr.seqs(fasta=data/raw/rrnDB-5.7_16S_rRNA.align, start=$start, end=$end, outputdir=$path); filter.seqs(vertical=TRUE)"

# if mothur exectued successfully, then touch the files that might not have been genereated
# in pcr.seqs because the sequences spanned the desired region's coordinates


if [[ "$?" -eq 0 ]]
then
  touch $path/rrnDB-5.7_16S_rRNA.bad.accnos
  touch $path/rrnDB-5.7_16S_rRNA.scrap.pcr.align
else
 echo "FAIL:mothur ran in to a problem"
 exit 1
fi

# clean up the file names
mv $path/rrnDB-5.7_16S_rRNA.pcr.filter.fasta $target
mv $path/rrnDB-5.7_16S_rRNA.bad.accnos $path/rrnDB.bad.accnos

# garbage collection
rm $path/rrnDB-5.7_16S_rRNA.pcr.align
rm $path/rrnDB-5.7_16S_rRNA.scrap.pcr.align
rm $path/rrnDB-5.filter
