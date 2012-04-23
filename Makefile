PDFLATEX=pdflatex --shell-escape

all: $(wildcard src/*.tex) 12biorob-tmoulard.tex
	$(PDFLATEX) 12biorob-tmoulard.tex && \
	bibtex 12biorob-tmoulard && \
	$(PDFLATEX) 12biorob-tmoulard.tex && \
	$(PDFLATEX) 12biorob-tmoulard.tex && \
	$(PDFLATEX) 12biorob-tmoulard.tex

clean:
	rm -rf 12biorob-tmoulard.t2d
	rm -f 12biorob-tmoulard.bbl
	rm -f 12biorob-tmoulard.blg

.PHONY: all
