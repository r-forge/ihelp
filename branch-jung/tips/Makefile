all: pdf
	make clean
	make tohtml
	make clean2

pdf: ps
	ps2pdf $(filename).ps

ps: dvi
	dvips $(filename).dvi

dvi:
	latex $(filename).tex
#	bibtex $(filename)
#	latex $(filename).tex
#	latex $(filename).tex

clean:
	rm -rf $(filename).ps $(filename).log $(filename).aux $(filename).out $(filename).dvi $(filename).bbl $(filename).blg $(filename).toc $(filename).lot $(filename).idx $(filename).lof $(filename).css $(filename).idv $(filename).ind $(filename).lg $(filename).tmp $(filename).ilg $(filename).4ct $(filename).xref $(filename).4tc *js.* *.tmp *.html *.png

tohtml:
	htlatex $(filename).tex

clean2:
	rm -rf $(filename).4ct $(filename).4tc $(filename).aux $(filename).idv $(filename).idx $(filename).lg $(filename).log $(filename).tmp $(filename).xref $(filename).tex.bak

