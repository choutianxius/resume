# Check if no arguments are passed
if ($args.Count -eq 0) {
    pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -recorder "./mycv.tex"
}
# Check if exactly one argument is passed and it is "clean"
elseif ($args.Count -eq 1 -and $args[0] -eq "clean") {
    latexmk -C ./mycv.tex
}
else {
    Write-Error "Invalid command. Usage: ./make.ps1 [clean]"
    exit 1
}
