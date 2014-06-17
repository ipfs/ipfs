
SHORT=ipfs-ttpw
LONG=ipfs-toward-the-permanent-web

all: $(LONG).pdf

$(LONG).pdf: $(SHORT).tex sig-alternate.cls
	pdflatex --shell-escape $(SHORT).tex
	mv $(SHORT).pdf $(LONG).pdf

clean:
	rm *.bbl *.aux *.dvi *.blg *.log *.gnuplot *.table

watch:
	-make
	@echo "[watching *.tex for recompilation]"
	# for portability, use watchmedo -- pip install watchmedo
	@watchmedo shell-command --patterns="*.tex;" --recursive \
		--command='make' .
