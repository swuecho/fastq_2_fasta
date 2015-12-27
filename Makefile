all:
	gcc -o bin/fastq_2_fasta_c -s fastq_2_fasta_get_line.c
	go build fastq_2_fasta_go.go; mv fastq_2_fasta_go bin/
	g++ -o bin/fastq_2_fasta_cpp -s fastq_2_fasta_cpp.cpp
