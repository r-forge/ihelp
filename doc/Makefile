## Chel Hee Lee 
## 2013.11.15 
## 
## document process

VERSION=3.0.2
DOC_PATH="~/Documents/Rworks/ihelp"
MANUAL_PATH_EN="./manual"
MANUAL_PATH_KO="./manual-ko"

update:
	# rm -rf R-$(VERSION)
	# wget http://cran.stat.sfu.ca/src/base/R-3/R-3.0.2.tar.gz
	tar -zvxf R-$(VERSION).tar.gz
	cd R-$(VERSION) && ./configure
	cd R-$(VERSION) && ./make info
	rsync -auv --delete ./R-$(VERSION)/doc/manual/* $(MANUAL_PATH_EN)/
	cp -r ./R-$(VERSION)/doc/manual/* $(MANUAL_PATH_KO)/

texi2latex:
	chmod u+rx info2tex.sh
	cp info2tex.sh $(MANUAL_PATH_KO)/
	cp Rworks.sty $(MANUAL_PATH_KO)/
	cd $(MANUAL_PATH_KO) && ./info2tex.sh

clean:
	rm -rf *.aux *.log *.cb *.cb2 *.glo *.idx *.toc *.~ *.html *.pdf *.info *.info-*

