perl -ne 'y/@/>/;print($_.<>)&&<>&&<>' test.fastq > test.fasta
perl -ne 'print(">". substr($_, 1).<>)&&<>&&<>' x.fastq > test.fasta
time perl -ne 'print(">". substr($_, 1).<>)&&<>&&<>' x.fastq > test.fasta

#TODO
# one use len > 200
perl -ne 'my ($id, $seq) = (">". substr($_, 1), <>); <>&&<>; if (dd' x.fastq > test.fasta
