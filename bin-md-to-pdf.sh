#!/bin/bash

# Some values

UD03_FOLDER="UD03_Procesos"
UD04_FOLDER="UD04-Users-and-Groups"
UD05_FOLDER="UD05-FileSystems-and-Permissions"
<<<<<<< HEAD
UD06_FOLDER="UD06-Projects"
=======
UD09_FOLDER="UD09-Projects"
>>>>>>> aebe6b90fb66e3524cb2de3f87cb99afdc4de9d1
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
<<<<<<< HEAD
make-UD $UD06_FOLDER
=======
make-UD $UD09_FOLDER
>>>>>>> aebe6b90fb66e3524cb2de3f87cb99afdc4de9d1
#make-UD0X



exit 0
