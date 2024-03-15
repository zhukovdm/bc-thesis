export TEXINPUTS=./lib//:

OUT_DIR=./out

LATEXMK=latexmk -pdf -output-directory=$(OUT_DIR) -shell-escape

.PHONY: all abstract-cz abstract-en errata poster thesis

all: abstract-cz abstract-en errata poster thesis

abstract-cz:
	$(LATEXMK) abstract-cz

abstract-en:
	$(LATEXMK) abstract-en

errata:
	$(LATEXMK) errata

poster:
	$(LATEXMK) poster

thesis:
	$(LATEXMK) thesis

clean:
	rm -rf $(OUT_DIR)
