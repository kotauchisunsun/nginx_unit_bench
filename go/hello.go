package main

import (
	"fmt"
	"net/http"
	"unit"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello Go World!!")
	})
	unit.ListenAndServe(":8300", nil)
}
