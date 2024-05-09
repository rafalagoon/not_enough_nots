package main

import (
	"flag"
	"fmt"
	"log/slog"
	"os"
	"text/template"
)

const notsTemplate string = `package main

import "fmt"

func main() {
	bool_val := 
{{- range $val := .TenTimes}}
		! ! ! ! ! ! ! ! ! !
{{- end}}
		{{range $val := .Remainder}}! {{end}}true

	fmt.Printf("Boolean value: %t\n", bool_val)
}

`

var (
	output string
	nots   uint
)

func init() {
	flag.UintVar(&nots, "nots", 15, "Number of nots to include in the file")
	flag.StringVar(&output, "output", "not.go", "Output golang file")
	flag.Parse()
}

func main() {

	type Content struct {
		Remainder []struct{}
		TenTimes  []struct{}
	}

	remainder := int(nots) % 10
	tenTimes := int(nots) / 10
	data := Content{
		make([]struct{}, remainder),
		make([]struct{}, tenTimes),
	}

	fOut, err := os.OpenFile(output, os.O_CREATE|os.O_RDWR|os.O_TRUNC, 0755)
	if err != nil {
		slog.Error(fmt.Sprintf("Error opening file %s", output), "error", err)
		os.Exit(1)
	}
	defer fOut.Close()

	template := template.Must(template.New("nots").Parse(notsTemplate))
	err = template.Execute(fOut, data)
	if err != nil {
		slog.Error("Error executing template", "error", err)
	}
}
