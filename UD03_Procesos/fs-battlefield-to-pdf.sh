#!/bin/bash

mkdir -p Battlefields/
rm -f Battlefields/*.pdf

./fs-battlefield.py

for f in $(ls -1 puntuacion_*.md); do
    pandoc $f -o Battlefields/$f.pdf --from markdown --template ../rsrc/templates/eisvogel.tex --listings
done

gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=Battlefields.pdf Battlefields/*.pdf
rm -f Battlefields/*.pdf

rm -f puntuacion_*