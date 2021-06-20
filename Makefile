# Rule
# target : prequirsite1/prequirsite2
# (tab)recipe

code/mothur/mothur : code/install_mothur.sh
	code/install_mothur.sh

data/references/silva_seed/silva.seed_v138_1.align : code/get_silva_seed.sh
	code/get_silva_seed.sh

data/raw/rrnDB-5.7_16S_rRNA.fasta : code/get_rrndb_files.sh
	code/get_rrndb_files.sh $@

data/raw/rrnDB-5.7_pantaxa_stats_NCBI.tsv : code/get_rrndb_files.sh
	code/get_rrndb_files.sh $@

data/raw/rrnDB-5.7_pantaxa_stats_RDP.tsv : code/get_rrndb_files.sh
	code/get_rrndb_files.sh $@

data/raw/rrnDB-5.7.tsv : code/get_rrndb_files.sh
	code/get_rrndb_files.sh $@

data/raw/rrnDB-5.7_16S_rRNA.align : code/align_sequences.sh\
							data/references/silva_seed/silva.seed_v138_1.align\
							data/raw/rrnDB-5.7_16S_rRNA.fasta\
							code/mothur/mothur
	code/align_sequences.sh

data/%/rrnDB.align data/%/rrnDB.bad.accnos : code/extract_region.sh\
 											data/raw/rrnDB-5.7_16S_rRNA.align\
											code/mothur/mothur
	code/extract_region.sh $@
