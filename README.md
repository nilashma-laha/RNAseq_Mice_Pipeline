# RNAseq_Mice_Pipeline
RNA-seq preprocessing pipeline used for mouse transcriptomic analysis
# RNA-seq Processing Pipeline (Mouse)

This repository contains the RNA-seq preprocessing workflow used in our study.

## Workflow Overview

1. Quality control using FastQC
2. Library strandedness inference using Salmon
3. Alignment using HISAT2
4. Gene quantification using featureCounts

## Organism
Mus musculus

## Data Type
Paired-end RNA sequencing

## Platform
Analysis performed on Ubuntu Linux using terminal-based tools.

Raw FASTQ and BAM files are not included due to size limitations.

## Strandedness Handling
Library type was inferred using Salmon (-l A).
The featureCounts parameter (-S) was adjusted accordingly:
ISR  →  -S 2  
ISF  →  -S 1  
Unstranded → -S 0
