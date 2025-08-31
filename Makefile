.DEFAULT_GOAL := pdf
.PHONY: all pdf watch clean distclean

OUTDIR := build
MAIN   := main

LATEXMK  := latexmk
PDFLATEX := pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1
SRCDIR   := inc
TEXFILE  := $(SRCDIR)/$(MAIN).tex

all: pdf

pdf:
	mkdir -p $(OUTDIR)
	$(LATEXMK) -pdf -r .latexmkrc \
		-pdflatex='$(PDFLATEX)' \
		$(TEXFILE)

watch:
	mkdir -p $(OUTDIR)
	$(LATEXMK) -pvc -pdf -r .latexmkrc \
		-pdflatex='$(PDFLATEX)' \
		$(TEXFILE)

clean:
	$(LATEXMK) -c -r .latexmkrc $(TEXFILE)

distclean: clean
	rm -rf $(OUTDIR)
