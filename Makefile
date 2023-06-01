all:
	make build
	make imagine
	make clean

build:
	pdflatex cheatsheet.tex
	#bibtex
	#pdflatex
	#pdflatex

clean:
	rm -rf *.mt0 *.mtc* *.toc *.idx *.ilg *.aux *.log 

imagine:
	# convert -geometry 1920x1080 -density 200x200 -quality 100 cheatsheet.pdf cheatsheet.jpg
	convert -density 200x200 -quality 100 cheatsheet.pdf cheatsheet.jpg
	/usr/bin/feh --no-fehbg --bg-max ~/projects/cheatsheet/cheatsheet.jpg
