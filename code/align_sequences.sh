#!/usr/bin/env bash

# author: Trevor Hardigan
# inputs: data/raw/rrnDB-5.7_16S_rRNA.fasta
#         data/references/silva_seed/silva.seed_v138_1.align
# outputs: rrnDB-5.7_16S_rRNA.align

# We need to include flip=TRUE to make sure sequences are all aligned in the same direction


code/mothur/mothur '#align.seqs(fasta=data/raw/rrnDB-5.7_16S_rRNA.fasta, reference=data/references/silva_seed/silva.seed_v138_1.align, flip=T)'
