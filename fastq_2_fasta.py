import sys
filename = sys.argv[1]

with open(filename, "r") as ins:
    line_num = 0
    for line in ins:
        if (line_num % 4 == 0):
            print(">" + line[1:], end="")
        if (line_num % 4 == 1):
            print(line, end = "")
        line_num = line_num + 1

