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

make-UD05(){
    
    echo " * UD 05 -> FileSystems and Permissions "
    cd UD05-FileSystems-and-Permissions

    for f in $(find . -name  "*.md" | sort ); do
        echo "Procesando : ${f}"
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

    done

    cd ..

}

make-UD0P(){
    
    echo " * UD 0P -> DevOps"
    cd UD0P-DevOps

    for f in $(find . -name  "*.md" | sort ); do
        echo "Procesando : ${f}"
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

    done

    cd ..

}


# Main

clean-pdfs
#make-UD04
make-UD05
make-UD0P
#make-UD0X



exit 0