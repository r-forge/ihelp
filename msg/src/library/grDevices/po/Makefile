po2html:
	cat $(filename).po > tmp.txt
	sed -e '/^[#"]/d' tmp.txt > tmp2.txt
	sed -e 's/msgid/[English]/g' tmp2.txt > en.txt
	sed -e 's/msgstr/[한국어]/g' en.txt > ko.txt
	dwww-txt2html --utf8 ko.txt > $(filename).html
	rm *.txt

