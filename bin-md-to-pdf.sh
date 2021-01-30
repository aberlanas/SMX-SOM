#!/bin/bash

mkdir -p PDFS

cd UD03_Procesos

for f in $(find . -name  "UD03*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done

exit 0