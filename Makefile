#!/usr/bin/make -f

TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex"

PDF_PATH:=$(shell readlink -f PDFS)

clean:
	@echo " * Clean workspace "
	rm UD01_IntroduccionSistemasOperativos/*.tex
	rm UD01_IntroduccionSistemasOperativos/*.pdf

files:
	@echo " [ Step : files ]"
	@echo " * Creating folder [ PDFS ]"
	@mkdir -p PDFS

prog-didactica: files
	@echo " [ Step : prog-didactica ]"
	@echo " * [ PDF ] : Programacion Didactica ..."
	@pandoc --template $(TEMPLATE_TEX_PD) $(PANDOC_OPTIONS) -o $(PDF_PATH)/ProgramacionDidactica_SOM.pdf ProgramacionDidactica/PD_*.md 
	@echo " * [ PDF Result ] : $(PDF_PATH)/ProgramacionDidactica_SOM.pdf"
	atril $(PDF_PATH)/ProgramacionDidactica_SOM.pdf
