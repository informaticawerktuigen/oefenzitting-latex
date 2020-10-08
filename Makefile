.PHONY: opgave5e opgave5f
OPGAVE5=opgave5f opgave5g opgave5h opgave5i opgave5j


opgave1.pdf:
	pdflatex opgave1.tex
opgave2.pdf:
	pdflatex opgave2.tex
opgave3.pdf:
	pdflatex opgave3.tex
opgave4.pdf:
	pdflatex opgave4.tex
opgave5.pdf:
	pdflatex opgave5.tex

opgave5e:
	latexmk -C
$(OPGAVE5):
	latexmk -pdf opgave5.tex

opgave6:
	latexmk -pdf opgave6.tex
