#!/bin/bash

mkdir -p PDFS

cd UD03_Procesos

for f in $(find . -name  "UD03*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done
cd ..

cd AceptaElScript

for f in $(find . -name  "*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done
cd ..

cd UD04-Users-and-Groups

for f in $(find . -name  "*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done
cd ..


exit 0