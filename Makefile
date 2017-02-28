
tket.tds.zip: doc/tket-doc.pdf
	mkdir -p tket.tds/doc/tex/latex/tket
	cp doc/tket-doc.pdf doc/*.tex tket.tds/doc/tex/latex/tket
	mkdir -p tket.tds/tex/latex/tket
	cp src/*.eps src/*.pdf src/tket.sty tket.tds/tex/latex/tket
	zip -r tket.tds.zip tket.tds
	rm -r tket.tds

.PHONY: doc/tket-doc.pdf
doc/tket-doc.pdf:
	cd doc && latexmk -pdf --shell-escape tket-doc.tex
