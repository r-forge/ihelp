# input = filename
htmlDIR = ../../www/docs/manual-ko
 
update:
	cp -r *.html $(htmlDIR)/

add:
	sed 's/utf-8">/utf-8"><meta name="keywords" content="R Korean introduction to R, 한국어, R, GNU R, 한글, 번역, 통계, statistical computing in R, 통계분석, R 소개, R 입문">/g' R-intro-ko.html > tmp.html
	cat tmp.html > $(input).html
	rm tmp.html

tohtml:
	texi2html $(input).texi

cleanhtml:
	rm *.html *.*~
