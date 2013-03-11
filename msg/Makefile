src_path=./src/library

#	$ svn checkout https://svn.r-project.org/R/trunk
# ~/Documents/R-Project/trunk/
# $ cd trunk
# $ ./tools/rsync-recommended

updatePOT:
#	tar -zcvf ko-from-trunk.tar.gz ../../trunk/src/library/*/po/*.pot
	tar -zcvf ko-from-R-devel.tar.gz ../../R-devel/src/library/*/po/*.pot
	tar -zxvf ko-from-R-devel.tar.gz 
	cp -ir R-devel/src/* src/

	msgmerge -vUN $(src_path)/base/po/ko.po $(src_path)/base/po/R.pot
	msgmerge -vUN $(src_path)/base/po/R-ko.po $(src_path)/base/po/R-base.pot
	msgmerge -vUN $(src_path)/base/po/RGui-ko.po $(src_path)/base/po/RGui.pot
	msgmerge -vUN $(src_path)/compiler/po/R-ko.po $(src_path)/compiler/po/R-compiler.pot
	msgmerge -vUN $(src_path)/graphics/po/ko.po $(src_path)/graphics/po/graphics.pot
	msgmerge -vUN $(src_path)/graphics/po/R-ko.po $(src_path)/graphics/po/R-graphics.pot
	msgmerge -vUN $(src_path)/grDevices/po/ko.po $(src_path)/grDevices/po/grDevices.pot
	msgmerge -vUN $(src_path)/grDevices/po/R-ko.po $(src_path)/grDevices/po/R-grDevices.pot
	msgmerge -vUN $(src_path)/grid/po/ko.po $(src_path)/grid/po/grid.pot
	msgmerge -vUN $(src_path)/grid/po/R-ko.po $(src_path)/grid/po/R-grid.pot
	msgmerge -vUN $(src_path)/methods/po/ko.po $(src_path)/methods/po/methods.pot
	msgmerge -vUN $(src_path)/methods/po/R-ko.po $(src_path)/methods/po/R-methods.pot
	msgmerge -vUN $(src_path)/parallel/po/ko.po $(src_path)/parallel/po/parallel.pot
	msgmerge -vUN $(src_path)/parallel/po/R-ko.po $(src_path)/parallel/po/R-parallel.pot
	msgmerge -vUN $(src_path)/splines/po/ko.po $(src_path)/splines/po/splines.pot
	msgmerge -vUN $(src_path)/splines/po/R-ko.po $(src_path)/splines/po/R-splines.pot
	msgmerge -vUN $(src_path)/stats/po/ko.po $(src_path)/stats/po/stats.pot
	msgmerge -vUN $(src_path)/stats/po/R-ko.po $(src_path)/stats/po/R-stats.pot
	msgmerge -vUN $(src_path)/stats4/po/R-ko.po $(src_path)/stats4/po/R-stats4.pot
	msgmerge -vUN $(src_path)/tcltk/po/ko.po $(src_path)/tcltk/po/tcltk.pot
	msgmerge -vUN $(src_path)/tcltk/po/R-ko.po $(src_path)/tcltk/po/R-tcltk.pot
	msgmerge -vUN $(src_path)/tools/po/ko.po $(src_path)/tools/po/tools.pot
	msgmerge -vUN $(src_path)/tools/po/R-ko.po $(src_path)/tools/po/R-tools.pot
	msgmerge -vUN $(src_path)/utils/po/ko.po $(src_path)/utils/po/utils.pot
	msgmerge -vUN $(src_path)/utils/po/R-ko.po $(src_path)/utils/po/R-utils.pot
	
# msgfmt -c --statistics -o [R-]ko.gmo [R-]ko.po
# library(tools)
# checkPoFiles("ko", "./ko-po")"

po2mo:
	rm -rf $(src_path)/*/po/*.mo
	msgfmt -cfv --statistics $(src_path)/base/po/ko.po -o $(src_path)/base/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/base/po/R-ko.po -o $(src_path)/base/po/R-ko.mo
	msgfmt -cfv --statistics $(src_path)/base/po/RGui-ko.po -o $(src_path)/base/po/RGui-ko.mo

	msgfmt -cfv --statistics $(src_path)/compiler/po/R-ko.po -o $(src_path)/compiler/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/graphics/po/ko -o $(src_path)/graphics/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/graphics/po/R-ko -o $(src_path)/graphics/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/grDevices/po/ko -o $(src_path)/grDevices/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/grDevices/po/R-ko -o $(src_path)/grDevices/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/grid/po/ko -o $(src_path)/grid/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/grid/po/R-ko -o $(src_path)/grid/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/methods/po/ko -o $(src_path)/methods/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/methods/po/R-ko -o $(src_path)/methods/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/parallel/po/ko -o $(src_path)/parallel/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/parallel/po/R-ko -o $(src_path)/parallel/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/splines/po/ko -o $(src_path)/splines/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/splines/po/R-ko -o $(src_path)/splines/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/stats/po/ko -o $(src_path)/stats/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/stats/po/R-ko -o $(src_path)/stats/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/stats4/po/R-ko -o $(src_path)/stats4/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/tcltk/po/ko -o $(src_path)/tcltk/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/tcltk/po/R-ko -o $(src_path)/tcltk/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/tools/po/ko -o $(src_path)/tools/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/tools/po/R-ko -o $(src_path)/tools/po/R-ko.mo

	msgfmt -cfv --statistics $(src_path)/utils/po/ko -o $(src_path)/utils/po/ko.mo
	msgfmt -cfv --statistics $(src_path)/utils/po/R-ko -o $(src_path)/utils/po/R-ko.mo

# installPOMO:
#	
#
po2html:
	echo "\n\n# LAST REVISION: `date` \n" > tmp.txt 
	cat $(filename).po >> tmp.txt
#	sed -e '/^# *CHL/d' -e '/^" *[^P]/d' -e '/^" *P[^rO]/d' -e '/^" *POT/d' tmp.txt > tmp2.txt
	sed -e '/^# *CHL/d' -e '/^" *[^P]/d' -e '/^" *P[^r]/d' tmp.txt > tmp2.txt
	sed -e 's/msgid/[English]/g' tmp2.txt > en.txt
	sed -e 's/msgstr/[한국어]/g' en.txt > $(filename).txt
	dwww-txt2html --utf8 ko.txt > $(filename).html
	rm $(filename).txt
	

convert2HTML:
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
#	make updatePOT
	make po2mo
	make convert2HTML
	make html2www
	make updateGK
#	svn commit
	

