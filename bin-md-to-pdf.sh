#!/bin/bash

# Some values

UD03_FOLDER="UD03_Procesos"
UD04_FOLDER="UD04-Users-and-Groups"
UD05_FOLDER="UD05-FileSystems-and-Permissions"
UD09_FOLDER="UD09-Projects"
UD0P_FOLDER="UD0P-DevOps"
UD0X_FOLDER="UD0X-Recover"

mkdir -p PDFS


clean-pdfs(){
    echo " * Cleaning PDFs"
    rm -f PDFS/*.pdf
}

make-UD(){
    
    echo " * Processing $1 "
    cd $1

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
#make-UD $UD05_FOLDER
#make-UD $UD0P_FOLDER
make-UD $UD09_FOLDER
#make-UD0X



exit 0
