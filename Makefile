OUTDIR := build
SRCDIR := src
MAIN   := main

LATEXMK  := latexmk
PDFLATEX := pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1

TEXFILE := $(SRCDIR)/$(MAIN).tex

.PHONY: all pdf watch clean distclean check

all: pdf
pdf: $(OUTDIR)/$(MAIN).pdf

$(OUTDIR)/$(MAIN).pdf: $(TEXFILE)
	mkdir -p $(OUTDIR)
	$(LATEXMK) -cd -pdf \
	  -outdir=../$(OUTDIR) \
	  -pdflatex='$(PDFLATEX)' \
	  $(TEXFILE)

watch:
	mkdir -p $(OUTDIR)
	$(LATEXMK) -cd -pvc -pdf \
	  -outdir=../$(OUTDIR) \
	  -pdflatex='$(PDFLATEX)' \
	  $(TEXFILE)

clean:
	$(LATEXMK) -cd -c -outdir=../$(OUTDIR) $(TEXFILE)

distclean:
	rm -rf $(OUTDIR)

check:
	@echo "bmstu.cls -> $$(kpsewhich bmstu.cls || echo 'НЕ НАЙДЕН')"
