#!/bin/bash

# Check if no arguments are passed
if [ $# -eq 0 ]; then
    pdflatex  -synctex=1 -interaction=nonstopmode -file-line-error -recorder  "./mycv.tex"
# Check if exactly one argument is passed and it is "clean"
elif [ $# -eq 1 ] && [ "$1" == "clean" ]; then
    latexmk -outdir=. -C ./mycv.tex
else
    echo "Invalid command. Usage: ./make.sh [clean]" >&2
    exit 1
fi
