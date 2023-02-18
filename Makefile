FLAGS=-shell-escape

paper.tex:
	pdflatex $(FLAGS) paper
	bibtex paper
	pdflatex $(FLAGS) paper
	pdflatex $(FLAGS) paper
	cp paper.pdf octaspace-whitepaper.pdf

clean:
	ls paper.* | egrep -v "tex|bib" | xargs rm -f

.PHONY: paper.tex
