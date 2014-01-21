## Copyright 2014 Tim van Werkhoven (t.i.m.vanwerkhoven@gmail.com)
##
## Based on https://github.com/farseerfc/sjtu-thesis-xelatex/blob/master/Makefile
## 
## This work is licensed under the Creative Commons
## Attribution-Noncommercial-Share Alike 3.0 Unported License. To view a copy
## of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or 
## send a letter to Creative Commons, 171 Second Street, Suite 300, San 
## Francisco, California, 94105, USA.

BASE = dissertation
PDFREADER = open
AUXDIR = ./aux-dir/
XELATEX = xelatex -interaction=batchmode -halt-on-error -output-directory=${AUXDIR}
BIBTEX = bibtex
GIT = git

# Branch to use for distribution
DIST_BRANCH=master

.PHONY: view tex gitdist distclean clean

all: pdf

pdf: ${BASE}.pdf

${BASE}.pdf: ${BASE}.tex
	${XELATEX} ${BASE}
	${BIBTEX} ${AUXDIR}${BASE}
	${XELATEX} ${BASE}
	${XELATEX} ${BASE}
	mv ${AUXDIR}/${BASE}.pdf .

view: ${BASE}.pdf
	$PDFREADER ${BASE}.pdf&

tar: ${BASE}.pdf
	# TARSOURCE = *.tex *.pdf *.bst *.cfg *.cls Makefile body
	# figures reference

	# ${BASE}.tar: ${TARSOURCE}
	# tar jcf ${BASE}.tar.bz2 ${TARSOURCE}

clean:
	find ./ -iname '*.aux' | xargs rm
	find ./ -iname '*.brf' | xargs rm
	find ./ -iname '*.log' | xargs rm
	find ./ -iname '*.lot' | xargs rm
	find ./ -iname '*.out' | xargs rm
	find ./ -iname '*.toc' | xargs rm
	find ./ -iname '*.blg' | xargs rm
	find ./ -iname '*.bbl' | xargs rm
	find ./ -iname '*.lof' | xargs rm
	find ./ -iname '*.xdv' | xargs rm

test: ${BASE}.tex
	${XELATEX} --no-pdf ${BASE}

gitdist:
	${GIT} archive ${DIST_BRANCH} --prefix='proefschrift/' --format=zip > dist/proefschrift_$$( ${GIT} describe --always --long ${DIST_BRANCH} ).zip

distclean: clean
	if [ -e ${BASE}.pdf ]; then rm ${BASE}.pdf; fi

