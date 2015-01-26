default: tomkovic-mds.pdf
tomkovic-mds.pdf: *.tex literatura.bib obrazky/* *.cbx *.lbx *.bbx
	xelatex tomkovic-mds.tex
#	bibtex tomkovic-mds
	biber tomkovic-mds
	xelatex tomkovic-mds.tex

clean:
	rm -r *.aux
	rm -r *.bbl
	rm -r *.bcf
	rm -r *.blg
	rm -r *.log
	rm -r *.out
	rm -r *.run.xml
	rm -r *.toc
	rm -r *-blx.bib
	rm `find -name '*~'`
