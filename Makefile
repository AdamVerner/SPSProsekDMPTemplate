FILENAME := Example

example-show: $(FILENAME).pdf
	xdg-open $(FILENAME).pdf

$(FILENAME).pdf : SPSTemplate.cls $(FILENAME).tex
	pdflatex -synctex=1 -interaction=nonstopmode $(FILENAME).tex

.PHONY: regen

regen:
	rm -f $(FILENAME).pdf
	make example-show

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.pdf *.synctex.gz *.dvi *.toc
