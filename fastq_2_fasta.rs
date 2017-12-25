use std::io::BufReader;
use std::io::BufRead;
use std::fs::File;
use std::io;
use std::io::Write;

fn main() {
    let f = File::open("data/SRR062634.filt.fastq").unwrap();
    let file = BufReader::new(&f);
    let stdout = io::stdout();
    let mut handle = stdout.lock();

    for (num, line) in file.lines().enumerate() {
        let l = line.unwrap();
        if num % 4 == 0 {
            // let chars: String = l.chars().skip(1).collect();
            // println!(">{}", chars);
            handle.write(&l[1..].as_bytes()).unwrap();
            handle.write(b"\n").unwrap();
        }
        if num % 4 == 1 {
            handle.write(l.as_bytes()).unwrap();
            handle.write(b"\n").unwrap();
        }
    }
}
