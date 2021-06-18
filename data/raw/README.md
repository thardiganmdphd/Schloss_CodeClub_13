Obtained files from rrnDB from UMICH 


#We automated downloading the tsv file with wget 
wget --directory-prefix=data/raw/ https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7.tsv.zip

#Unzip file				
unzip -n -d data/raw/ data/raw/rrnDB-5.7.tsv.zip
