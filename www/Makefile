# This file is intended for updating the webiste pages.

MANUAL_PATH = ../doc/manual-ko

sub2ihelp:
	cp -r /home/gnustats/Documents/Rworks/korean/src/www/* /home/gnustats/Documents/Rworks/ihelp/www/
	cp /home/gnustats/Documents/Rworks/korean/src/doc/manual-ko/*.texi /home/gnustats/Documents/Rworks/ihelp/doc/manual-ko/

conv2html:
	dos2unix $(MANUAL_PATH)/R-intro-ko.texi
	texi2html $(MANUAL_PATH)/R-intro-ko.texi
	dos2unix $(MANUAL_PATH)/R-data-ko.texi
	texi2html $(MANUAL_PATH)/R-data-ko.texi
	dos2unix $(MANUAL_PATH)/R-FAQ-ko.texi
	texi2html $(MANUAL_PATH)/R-FAQ-ko.texi
	dos2unix $(MANUAL_PATH)/R-lang-ko.texi
	texi2html $(MANUAL_PATH)/R-lang-ko.texi
	dos2unix $(MANUAL_PATH)/R-admin-ko.texi
	texi2html $(MANUAL_PATH)/R-admin-ko.texi
	dos2unix $(MANUAL_PATH)/R-exts-ko.texi
	texi2html $(MANUAL_PATH)/R-exts-ko.texi
	dos2unix $(MANUAL_PATH)/rw-FAQ-ko.texi
	texi2html $(MANUAL_PATH)/rw-FAQ-ko.texi
	dos2unix ../doc/manual-ko/R-ints-ko.texi
	dos2unix ../doc/manual-ko/R-ints-ko.texi

mv2www:
	# cp /home/gnustats/Documents/Rworks/ihelp/doc/manual-ko/*.html /home/gnustats/Documents/Rworks/ihelp/www/doc/manual-ko/
	rsync -auv --perms --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r /home/gnustats/Documents/Rworks/ihelp/www/* gnustats@korea.gnu.org:./www/
# file permission set to 644, and folder permission set to 755.
# http://serverfault.com/questions/233567/how-to-set-file-folder-permissions-using-rsync-from-windows-to-linux
# M-x replace-string 

	# cd ../doc/manual-ko/ && makeinfo --html --no-split --enable-encoding --css-include=Rman.css --output=R-intro-ko.html R-intro-ko.texi
