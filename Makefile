M=main
# arguments
a=-interaction=nonstopmode
# tex
t=t/defs.tex  t/dpd.tex  t/notheme.tex  t/rbc.tex  t/title.tex
I=i/rbc.org.png  i/rbc.triang.png  i/stokes.png

$M.pdf: $M.tex $t $I
	pdflatex $a $< && \
	pdflatex $a $<

.PHONY: clean
clean:
	-rm  $M.aux $M.log $M.nav $M.out $M.pdf $M.snm $M.toc
