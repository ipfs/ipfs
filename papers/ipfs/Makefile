
all: ipfs.pdf

ipfs.pdf: ipfs.tex sig-alternate.cls
	pdflatex --shell-escape ipfs.tex

clean:
	rm *.bbl *.aux *.dvi *.blg *.log *.gnuplot *.table

watch:
	-make
	@echo "[watching *.tex for recompilation]"
	# for portability, use watchmedo -- pip install watchmedo
	@watchmedo shell-command --patterns="*.tex;" --recursive \
		--command='make' .
