DOC=simdonweb

#AT=@
AT=

#LATEX_QUIET=1> /dev/null
LATEX_QUIET=

#LATEX_BATCH=-interaction=batchmode
LATEX_BATCH=

all: $(DOC).pdf

$(DOC).pdf: $(DOC).tex $(DOC).bib
	$(AT) pdflatex $(LATEX_BATCH) $(DOC).tex $(LATEX_QUIET)
	$(AT) bibtex $(DOC)
	$(AT) pdflatex $(LATEX_BATCH) $(DOC).tex $(LATEX_QUIET)
	$(AT) pdflatex $(LATEX_BATCH) $(DOC).tex $(LATEX_QUIET)

.PHONY: clean

clean:
	rm -f $(DOC).pdf *.aux *.bbl *.blg *.log *.out *.toc