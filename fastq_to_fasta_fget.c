#include <stdio.h>
#define MAX 25000 

void main() {
    FILE *fp;
    char *filename = "x.fastq";
    fp = fopen(filename, "r");
    if (fp == NULL) {
        fprintf(stderr, "Error opening %s\n", filename);
    }

    char line[MAX];

    while (!feof(fp)) {
        fgets(line, MAX, fp);
        fputs(line,stdout); /* id */
        fgets(line, MAX, fp);
        fputs(line,stdout);
        fgets(line, MAX, fp);
        fgets(line, MAX, fp);
    }
    fclose(fp);


}
