src_path=./src/library

po2html:
	cat $(filename).po > tmp.txt
	sed -e '/^# *CHL/d' -e '/^" *[^P]/d' -e '/^" *P[^r]/d' tmp.txt > tmp2.txt
	sed -e 's/msgid/[English]/g' tmp2.txt > en.txt
	sed -e 's/msgstr/[한국어]/g' en.txt > ko.txt
	dwww-txt2html --utf8 ko.txt > $(filename).html
	rm *.txt

tohtml:
	rm -rf $(src_path)/*/po/*.html
	make po2html filename=$(src_path)/base/po/ko
	make po2html filename=$(src_path)/base/po/R-ko
	make po2html filename=$(src_path)/base/po/RGui-ko
	make po2html filename=$(src_path)/compiler/po/R-ko
	make po2html filename=$(src_path)/graphics/po/ko
	make po2html filename=$(src_path)/graphics/po/R-ko
	make po2html filename=$(src_path)/grDevices/po/ko
	make po2html filename=$(src_path)/grDevices/po/R-ko
	make po2html filename=$(src_path)/grid/po/ko
	make po2html filename=$(src_path)/grid/po/R-ko
	make po2html filename=$(src_path)/methods/po/ko
	make po2html filename=$(src_path)/methods/po/R-ko
	make po2html filename=$(src_path)/parallel/po/ko
	make po2html filename=$(src_path)/parallel/po/R-ko
	make po2html filename=$(src_path)/splines/po/ko
	make po2html filename=$(src_path)/splines/po/R-ko
	make po2html filename=$(src_path)/stats/po/ko
	make po2html filename=$(src_path)/stats/po/R-ko
	make po2html filename=$(src_path)/stats4/po/R-ko
	make po2html filename=$(src_path)/tcltk/po/ko
	make po2html filename=$(src_path)/tcltk/po/R-ko
	make po2html filename=$(src_path)/tools/po/ko
	make po2html filename=$(src_path)/tools/po/R-ko
	make po2html filename=$(src_path)/utils/po/ko
	make po2html filename=$(src_path)/utils/po/R-ko

html2www:
	tar -zcvf tmp-ko-msg-$(date).tar.gz ./src/library/*/po/*.html
	mv tmp-ko-msg-$(date).tar.gz ../www/msg/standard/
	tar -zxvf ../www/msg/standard/tmp-ko-msg-$(date).tar.gz --directory=../www/msg/standard/

updateGK:
	rsync -auv ./../www/* gnustats@korea.gnu.org:./www/

all:
	make tohtml
	make html2www
	make updateGK
#	svn commit
	
