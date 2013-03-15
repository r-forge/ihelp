# input = filename
htmlDIR = ../../www/docs/manual-ko
 
html2www:
	rsync -auv *.html $(htmlDIR)/

createHTML:
	makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-intro-ko.html R-intro-ko.texi
	rsync -auv ./../../branch-jung/R-data-ko.texi ./
	makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-data-ko.html R-data-ko.texi
	makeinfo --html --no-split --enable-encoding --css-include=Rfaq.css --output=R-FAQ-ko.html R-FAQ-ko.texi
#	texi2html $(input).texi --html --no-split --css-include=Rman.css

all:
	rm *.html *.*~
	make createHTML
	make html2www
