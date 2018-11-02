package main

import "fmt"
import "os"

type Thing struct {
	Name string
}

func main() {
	a := Thing{}
	a.Name = ""
}
