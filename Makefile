M=main
# arguments
a=-interaction=nonstopmode
# tex
t=t/defs.tex  t/dpd.tex  t/notheme.tex  t/rbc.tex  t/title.tex t/ttf.tex t/bib.tex t/ttf.ks.tex t/ks.tex
i=i/net.png i/rbc.org.png i/rbc.triang.png i/stokes.png i/t.png i/tumbl.png

$M.pdf: $M.tex $t $i
	pdflatex $a $< && \
	pdflatex $a $<

.PHONY: clean
clean:
	-rm  $M.aux $M.log $M.nav $M.out $M.pdf $M.snm $M.toc
