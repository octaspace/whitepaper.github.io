FLAGS=-shell-escape

paper.tex:
	pdflatex $(FLAGS) paper
	bibtex paper
	pdflatex $(FLAGS) paper
	pdflatex $(FLAGS) paper

dist: paper.tex
	test -d dist || mkdir dist
	cp paper.pdf dist/octaspace-whitepaper.pdf
	cp index.html dist

clean:
	ls paper.* | egrep -v "tex|bib" | xargs rm -f

.PHONY: paper.tex
