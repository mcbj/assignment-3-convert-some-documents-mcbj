#!/bin/bash

# Declare input argument as a variable
sourcefile=$1
# Convert markdown to HTML
pandoc -o $sourcefile.html $sourcefile.md
# Convert markdown to DOCX
pandoc -o $sourcefile.docx $sourcefile.md
# Convert markdown to ODT
pandoc -o $sourcefile.odt $sourcefile.md
# Convert markdown to PDF
pandoc -o $sourcefile.pdf $sourcefile.md
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $sourcefile.md to HTML, DOCX, ODT, PDF"