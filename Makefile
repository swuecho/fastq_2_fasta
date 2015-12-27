all:
	gcc -o fastq_to_fasta -s fastq_to_fasta.c
	gcc -o get_line -s fastq_to_fasta_get_line.c
