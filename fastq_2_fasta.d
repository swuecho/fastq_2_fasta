import std.stdio;
import std.string;

void main(string[] args)
{
    File  file = File(args[1], "r");
    int line_num = 0;
    while (!file.eof()) {
        string line = chomp(file.readln());
        if ( line_num % 4 == 0) {
            // remove this line
            if (line.length > 0) {
                writeln(">", line[1..$]);
            }
            line_num = 0;
        }
        if ( line_num == 1 ) {
            writeln(line);
        }
        line_num++;
    }

}
