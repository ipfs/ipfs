
SHORT=ipfs-cap2pfs
LONG=ipfs-p2p-file-system

all: $(LONG).pdf

$(LONG).pdf: $(SHORT).tex sig-alternate.cls $(SHORT).bib
	pdflatex $(SHORT).tex
	bibtex $(SHORT)
	pdflatex $(SHORT).tex
	pdflatex $(SHORT).tex
	mv $(SHORT).pdf $(LONG).pdf

clean:
	rm *.bbl *.aux *.dvi *.blg *.log *.gnuplot *.table

watch:
	-make
	@echo "[watching *.tex for recompilation]"
	# for portability, use watchmedo -- pip install watchmedo
	@watchmedo shell-command --patterns="*.tex;" --recursive \
		--command='make' .

publish: $(LONG).pdf
	scp $(LONG).pdf benet.ai:/var/static/t/$(LONG).pdf
