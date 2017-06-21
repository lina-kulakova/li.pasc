M=main
# arguments
a=-interaction=nonstopmode
# tex
T=tex/defs.tex tex/notheme.tex
I= # images

$M.pdf: $M.tex $T $I
	pdflatex $a $< && \
	pdflatex $a $<

.PHONY: clean
clean:
	-rm  $M.aux $M.log $M.nav $M.out $M.pdf $M.snm $M.toc
