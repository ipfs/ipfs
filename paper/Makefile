
all: gfs.pdf

gfs.pdf: gfs.tex
	pdflatex gfs.tex

clean:
	rm *.bbl *.aux *.dvi *.blg *.log

watch:
	-make
	@echo "[watching *.tex for recompilation]"
	# for portability, use watchmedo -- pip install watchmedo
	@watchmedo shell-command --patterns="*.tex;" --recursive \
		--command='make' .
