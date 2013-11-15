# This file is intended for updating the webiste pages.

MANUAL_PATH_KO = ../doc/manual-ko
MANUAL_PATH_EN = ../doc/manual

sub2ihelp:
	cp -r ../../korean/src/www/* ./
	cp ../../korean/src/doc/manual-ko/*.texi $(MANUAL_PATH_KO)/

conv2html:
	dos2unix $(MANUAL_PATH_KO)/R-intro-ko.texi
	# texi2html $(MANUAL_PATH_KO)/R-intro-ko.texi
	makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=./doc/manual-ko/R-intro-ko.html $(MANUAL_PATH_KO)/R-intro.texi
	#dos2unix $(MANUAL_PATH_KO)/R-data-ko.texi
	#texi2html $(MANUAL_PATH_KO)/R-data-ko.texi
	#dos2unix $(MANUAL_PATH_KO)/R-FAQ-ko.texi
	#texi2html $(MANUAL_PATH_KO)/R-FAQ-ko.texi
	#dos2unix $(MANUAL_PATH_KO)/R-lang-ko.texi
	#texi2html $(MANUAL_PATH_KO)/R-lang-ko.texi
	#dos2unix $(MANUAL_PATH_KO)/R-admin-ko.texi
	#texi2html $(MANUAL_PATH_KO)/R-admin-ko.texi
	#dos2unix $(MANUAL_PATH_KO)/R-exts-ko.texi
	#texi2html $(MANUAL_PATH_KO)/R-exts-ko.texi
	#dos2unix $(MANUAL_PATH_KO)/rw-FAQ-ko.texi
	#texi2html $(MANUAL_PATH_KO)/rw-FAQ-ko.texi
	#dos2unix $(MANUAL_PATH_KO)/R-ints-ko.texi
	#dos2unix $(MANUAL_PATH_KO)/R-ints-ko.texi

mv2www:
	cp $(MANUAL_PATH_KO)/*.html doc/manual-ko/
	rsync -auv --delete --perms --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r ./* gnustats@korea.gnu.org:./www/
# file permission set to 644, and folder permission set to 755.
# http://serverfault.com/questions/233567/how-to-set-file-folder-permissions-using-rsync-from-windows-to-linux
# M-x replace-string 
