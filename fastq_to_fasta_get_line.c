#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
   {
     char *filename = "x.fastq";
     FILE * fp;
     char * line = NULL;
     size_t len = 0;
     ssize_t read;
     int line_num = 0;

     fp = fopen(filename, "r");
     if (fp == NULL)
       exit(EXIT_FAILURE);
     while ((read = getline(&line, &len, fp)) != -1) {
         if ( line_num % 4 == 0) {
            printf(">%s", line+1); /* discart first char @ in seq id */
            line_num == 0;
         }
         if ( line_num % 4 == 1 ) {
            printf("%s", line);
         }
       line_num++;

     }

     fclose(fp);
     if (line)
       free(line);
     exit(EXIT_SUCCESS);
}
