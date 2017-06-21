M=main
# arguments
a=-interaction=nonstopmode
# tex
T=t/defs.tex t/notheme.tex
I=i/stokes.png # images

$M.pdf: $M.tex $T $I
	pdflatex $a $< && \
	pdflatex $a $<

.PHONY: clean
clean:
	-rm  $M.aux $M.log $M.nav $M.out $M.pdf $M.snm $M.toc
