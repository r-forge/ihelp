# This file is intended for updating the webiste pages.

sub2ihelp:
	cp -r /home/gnustats/Documents/R-ko/korean/src/www/* /home/gnustats/Documents/R-ko/ihelp/www/
	cp /home/gnustats/Documents/R-ko/korean/src/doc/manual-ko/*.texi /home/gnustats/Documents/R-ko/ihelp/doc/manual-ko/

conv2html:
	cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-intro-ko.html R-intro-ko.texi
	cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-data-ko.html R-data-ko.texi
	cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rfaq.css --output=R-FAQ-ko.html R-FAQ-ko.texi
	cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-lang-ko.html R-lang-ko.texi 
	cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-admin-ko.html R-admin-ko.texi
	cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-exts-ko.html R-exts-ko.texi
	cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rfaq.css --force --output=rw-FAQ-ko.html rw-FAQ-ko.texi
	# texi2html rw-FAQ-ko.texi --html --no-split --css-include=Rman.css

mv2www:
	cp /home/gnustats/Documents/R-ko/ihelp/doc/manual-ko/*.html /home/gnustats/Documents/R-ko/ihelp/www/doc/manual-ko/
	rsync -auv --perms --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r /home/gnustats/Documents/R-ko/ihelp/www/* gnustats@korea.gnu.org:./www/
# file permission set to 644, and folder permission set to 755.
# http://serverfault.com/questions/233567/how-to-set-file-folder-permissions-using-rsync-from-windows-to-linux
# M-x replace-string 
