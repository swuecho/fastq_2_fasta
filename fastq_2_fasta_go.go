package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

func main() {
    filename := os.Args[1]
	file, err := os.Open(filename)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	line_num := 0
	for scanner.Scan() {
		if line_num%4 == 0 {
			fmt.Print(">")
			fmt.Println(scanner.Text()[1:])
			line_num = 0
		}
		if line_num == 1 {
			fmt.Println(scanner.Text())
		}
		line_num++
	}

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}
}
