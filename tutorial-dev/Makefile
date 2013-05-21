all: pdf
#	make clean
#	make tohtml
#	make clean2
#	svn rm --force ../www/$(filename)*
#	cp *.html ../www/
#	cp *.tmp ../www/
#	cp *.png ../www/
#	cp *.css ../www/
#	svn add --force ../www/$(filename)*
#	rsync -auv ../www/* gnustats@korea.gnu.org:./www/
#	svn ../../commit
# pdf2htmlEX tutorial.pdf --split-pages 1 --process-outline 0

part1:
	pdflatex Parts/part1-ch00.tex
	pdflatex Parts/part1-ch01.tex
	pdflatex Parts/part1-ch02.tex
	pdflatex Parts/part1-ch03.tex
	pdflatex Parts/part1-ch04.tex
	pdflatex Parts/part1-ch05.tex
	pdflatex Parts/part1-ch06.tex
	pdflatex Parts/part1-ch07.tex
	rm -rf *.aux *.idx *.log *.out
	cp *.pdf ../www/tutorial/part1/
	rsync -auv ../www/* gnustats@korea.gnu.org:./www/

pdf: ps
	ps2pdf $(filename).ps

ps: dvi
	dvips $(filename).dvi

dvi:
	latex $(filename).tex
	bibtex $(filename)
	latex $(filename).tex
	latex $(filename).tex

clean:
	rm -rf $(filename).ps $(filename).log $(filename).aux $(filename).out $(filename).dvi $(filename).bbl $(filename).blg $(filename).toc $(filename).lot $(filename).idx $(filename).lof $(filename).css $(filename).idv $(filename).ind $(filename).lg $(filename).tmp $(filename).ilg $(filename).4ct $(filename).xref $(filename).4tc *js.* *.tmp *.html *.png

tohtml:
#	htlatex $(filename).tex "xhtml, mycfg, mouseover, next, frames, 2"
	htlatex $(filename).tex "mycfg, 2, frames"
# http://uce.uniovi.es/tips/Latex/HtLatexConfig.html
# http://www.tug.org/TUGboat/tb25-1/gurari.pdf

clean2:
	rm -rf $(filename).4ct $(filename).4tc $(filename).aux $(filename).idv $(filename).idx $(filename).lg $(filename).log $(filename).tmp $(filename).xref $(filename).tex.bak

