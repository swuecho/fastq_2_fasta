import sqlite3
from os import path 

data_dir = '/home/hwu/dev'
conn = sqlite3.connect(path.join(data_dir, 'seq.db'))

c = conn.cursor()
with open("/home/hwu/dev/fastq_2_fasta/data/SRR062634.filt.fastq", "r") as ins:
    line_num = 0
    seq_id = ""
    seq = ""
    score = ""
    for line in ins:
        if (line_num % 4 == 0):
            seq_id  = line[1:].strip()
            line_num = 0
        if (line_num  == 1):
            seq = line.strip() 
        if (line_num  == 3):
            score = line.strip()
            c.execute("INSERT INTO seq (id, seq, score) VALUES(?, ?, ?)" , (seq_id, seq, score))
        line_num = line_num + 1

conn.commit()

