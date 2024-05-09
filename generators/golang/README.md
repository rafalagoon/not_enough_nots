# Go nots generator code

Small golang code containing a cli tool to fill a template with X amount of nots.

On a Fedora Linux x64 system, the limit on Go 1.21.8 is apparently 123359. Over this number, the Go compiler return a 1000-byte stack limit error. Maybe in other systems or with other compilers (like GCCGO) the limit is different.

## Usage

```shell
# Generate not.go with X ammount of nots
go generatos/golang/main.go -nots 123359

# Run resulting not.go program
go not.go
```