all: test
	sha1sum result/*

test: compile
	time bin/fastq_2_fasta_c data/SRR062634.filt.fastq >result/c.fasta
	time bin/fastq_2_fasta_cpp data/SRR062634.filt.fastq >result/cpp.fasta
	time bin/fastq_2_fasta_go data/SRR062634.filt.fastq >result/go.fasta

compile:
	gcc -o bin/fastq_2_fasta_c -s fastq_2_fasta_get_line.c
	go build fastq_2_fasta_go.go; mv fastq_2_fasta_go bin/
	g++ -o bin/fastq_2_fasta_cpp -s fastq_2_fasta_cpp.cpp
