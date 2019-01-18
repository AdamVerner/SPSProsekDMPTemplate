
example-show: Example.pdf
	xdg-open Example.pdf

Example.pdf: SPSTemplate.cls Example.tex
	pdflatex -synctex=1 -interaction=nonstopmode Example.tex

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.pdf *.synctex.gz *.dvi *.toc

clean-log:

	rm -f *.aux *.log *.out *.synctex.gz *.dvi *.toc
