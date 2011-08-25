PDFLATEX=pdflatex --shell-escape

all: $(wildcard src/*.tex) 11icra-tmoulard.tex
	$(PDFLATEX) 11icra-tmoulard.tex && \
	bibtex 11icra-tmoulard && \
	$(PDFLATEX) 11icra-tmoulard.tex && \
	$(PDFLATEX) 11icra-tmoulard.tex && \
	$(PDFLATEX) 11icra-tmoulard.tex

clean:
	rm -rf 11icra-tmoulard.t2d
	rm -f 11icra-tmoulard.bbl
	rm -f 11icra-tmoulard.blg

.PHONY: all
