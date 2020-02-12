all:
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper

clean:
	ls paper.* | egrep -v "tex|bib" | xargs rm -f
