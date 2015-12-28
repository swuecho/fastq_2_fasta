# fastq_2_fasta

## Program

assume every record is 4 lines.

1. seq_id
2. seq
3. +
4. qual

other variant of FASTQ format are not supported!


## Data
file in data is from 

ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/phase3/data/HG00096/sequence_read/SRR062634.filt.fastq.gz

## Result

```
time bin/fastq_2_fasta_c data/SRR062634.filt.fastq >result/c.fasta
0.10user 0.04system 0:00.26elapsed 55%CPU (0avgtext+0avgdata 1332maxresident)k
0inputs+95600outputs (0major+69minor)pagefaults 0swaps
time bin/fastq_2_fasta_cpp data/SRR062634.filt.fastq >result/cpp.fasta
0.15user 0.51system 0:00.86elapsed 76%CPU (0avgtext+0avgdata 2744maxresident)k
0inputs+95600outputs (0major+122minor)pagefaults 0swaps
time bin/fastq_2_fasta_go data/SRR062634.filt.fastq >result/go.fasta
0.43user 0.77system 0:01.42elapsed 84%CPU (0avgtext+0avgdata 1976maxresident)k
0inputs+95600outputs (0major+243minor)pagefaults 0swaps
time perl fastq_2_fasta.pl data/SRR062634.filt.fastq >result/perl.fasta
0.42user 0.03system 0:00.61elapsed 74%CPU (0avgtext+0avgdata 4036maxresident)k
0inputs+95600outputs (0major+194minor)pagefaults 0swaps
time python3 fastq_2_fasta.py data/SRR062634.filt.fastq >result/python.fasta
0.89user 0.03system 0:01.15elapsed 80%CPU (0avgtext+0avgdata 8120maxresident)k
0inputs+95600outputs (0major+895minor)pagefaults 0swaps
```


