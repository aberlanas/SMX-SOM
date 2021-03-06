#!/usr/bin/make -f

TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex"
TEMPLATE_TEX_PRACTICA="rsrc/templates/eisvogel.tex"
UD03_FOLDER="UD03_Procesos"

PDF_PATH:=$(shell readlink -f PDFS)

clean:
	@echo " * Clean workspace "
	rm -f UD01_IntroduccionSistemasOperativos/*.tex
	rm -f UD01_IntroduccionSistemasOperativos/*.pdf
	rm -f UD02_PowerShell-BASH/*.tex
	rm -f UD02_PowerShell-BASH/*.pdf

ud03:
	@echo " * UD03 -> Procesos "
	cd $(UD03_FOLDER)
	@for file in *.md ; do \
        	echo " -> " $${file} ; \
			destfile=$(basename $${file}); \
			echo $destfile; \
			pandoc --template $(TEMPLATE_TEX_PRACTICA) --listings --from markdown $${file} -o ../PDFS/1.pdf; \
        done
	#@pandoc --template $(TEMPLATE_TEX_PRACTICA) --listings --from markdown UD03_Procesos/UD03-

files:
	@echo " [ Step : files ]"
	@echo " * Creating folder [ PDFS ]"
	@mkdir -p PDFS

prog-didactica: files
	@echo " [ Step : prog-didactica ]"
	@echo " * [ PDF ] : Programacion Didactica ..."
	@pandoc --template $(TEMPLATE_TEX_PD) $(PANDOC_OPTIONS) -o $(PDF_PATH)/ProgramacionDidactica_SOM.pdf ProgramacionDidactica/PD_*.md 
	@pandoc  -o $(PDF_PATH)/ProgramacionDidactica_SOM.odt ProgramacionDidactica/PD_*.md 
	@echo " * [ PDF Result ] : $(PDF_PATH)/ProgramacionDidactica_SOM.pdf"
	atril $(PDF_PATH)/ProgramacionDidactica_SOM.pdf
