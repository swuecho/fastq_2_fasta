use std::io::BufReader;
use std::io::BufRead;
use std::fs::File;

fn main() {
    let f = File::open("data/SRR062634.filt.fastq").unwrap();
    let file = BufReader::new(&f);
    for (num, line) in file.lines().enumerate() {
        let l = line.unwrap();
        if num % 4 == 0 {
            // let chars: String = l.chars().skip(1).collect();
            // println!(">{}", chars);
            println!(">{}", &l[1..]);

        }
        if num % 4 == 1 {
            println!("{}", l);
        }
    }
}
