## Chel Hee Lee 
## 2013.11.15 
## 
## document process

FILE=R-intro
FILE_KO="$(FILE)-ko"
VERSION=3.0.2
DOC_PATH="~/Documents/Rworks/ihelp"
MANUAL_PATH_EN="./manual"
MANUAL_PATH_KO_LATEX="./manual-ko-latex"
MANUAL_PATH_KO="./manual-ko"

update:
	# rm -rf R-$(VERSION)
	# wget http://cran.stat.sfu.ca/src/base/R-3/R-3.0.2.tar.gz
	tar -zvxf R-$(VERSION).tar.gz
	cd R-$(VERSION) && ./configure
	cd R-$(VERSION) && ./make info
	cp -r ./R-$(VERSION)/doc/manual/* $(MANUAL_PATH_EN)/
	cp -r ./R-$(VERSION)/doc/manual/* $(MANUAL_PATH_KO_LATEX)/

texi2latexpo:
#	cp ./sample.texi $(MANUAL_PATH_KO_LATEX)/
	chmod u+rx info2tex.sh
	cp info2tex.sh $(MANUAL_PATH_KO_LATEX)/
	cp Rworks.sty $(MANUAL_PATH_KO_LATEX)/
	cp -r ./R-$(VERSION)/doc/manual/* $(MANUAL_PATH_KO_LATEX)/
	cd $(MANUAL_PATH_KO_LATEX) && ./info2tex.sh
# See the example in the help po4a
# make texi2latexpo FILE=R-intro

en2ko:
	chmod u+rx en2ko.sh
	cp ./en2ko.sh $(MANUAL_PATH_KO_LATEX)/
	cd $(MANUAL_PATH_KO_LATEX)/ && ./en2ko.sh

	
po2pdf:
	cd $(MANUAL_PATH_KO_LATEX) && po4a-updatepo -f latex -m dummy.tex -p dummy-ko.po
	cd $(MANUAL_PATH_KO_LATEX) && po4a-translate -f latex -m dummy.tex -p dummy-ko.po -l dummy-ko.tex
#	cd $(MANUAL_PATH_KO_LATEX) && iconv -f ISO-8859-1 -t UTF-8 dummy-ko.tex > dummy-ko-foo.tex
#	cd $(MANUAL_PATH_KO_LATEX) && mv dummy-ko-foo.tex dummy-ko.tex
	cd $(MANUAL_PATH_KO_LATEX) && pdflatex dummy-ko.tex


clean:
	rm -rf *.aux *.log *.cb *.cb2 *.glo *.idx *.toc *.~ *.html *.pdf *.info *.info-*

