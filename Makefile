all:
	gcc -o bin/fastq_2_fasta_c -s fastq_to_fasta_get_line.c
	go build fasta_go.go; mv fasta_go bin
