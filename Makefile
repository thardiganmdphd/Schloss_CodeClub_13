# Rule
# target : prequirsite1/prequirsite2
# (tab)recipe

data/references/silva_seed/silva.seed_v138_1.align : code/get_silva_seed.sh
	./code/get_silva_seed.sh

data/raw/rrnDB-5.7_16S_rRNA.fasta : code/get_rrndb_files.sh
	./code/get_rrndb_files.sh rrnDB-5.7_16S_rRNA.fasta

data/raw/rrnDB-5.7_pantaxa_stats_NCBI.tsv : code/get_rrndb_files.sh
	./code/get_rrndb_files.sh rrnDB-5.7_pantaxa_stats_NCBI.tsv

data/raw/rrnDB-5.7_pantaxa_stats_RDP.tsv : code/get_rrndb_files.sh
	./code/get_rrndb_files.sh rrnDB-5.7_pantaxa_stats_RDP.tsv

data/raw/rrnDB-5.7.tsv : code/get_rrndb_files.sh
	./code/get_rrndb_files.sh rrnDB-5.7.tsv

data/raw/rrnDB-5.7_16S_rRNA.align : data/references/silva_seed/silva.seed_v138_1.align\
							data/raw/rrnDB-5.7_16S_rRNA.fasta\
							code/align_sequences.sh
	./code/align_sequences.sh
