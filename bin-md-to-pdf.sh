#!/bin/bash

mkdir -p PDFS

clean-pdfs(){
    echo " * Cleaning PDFs"
    rm -f PDFS/*.pdf
}


make-UD03(){

cd UD03_Procesos

for f in $(find . -name  "UD03*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done
cd ..
}

make-AceptaElScript(){

cd AceptaElScript

for f in $(find . -name  "*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done
cd ..

}

make-UD04(){
cd UD04-Users-and-Groups

for f in $(find . -name  "*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done
cd ..

}

make-UD0X(){
cd UD0X-Recover

for f in $(find . -name  "*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done
cd ..

}

# Main

clean-pdfs
#make-UD04
make-UD0X



exit 0