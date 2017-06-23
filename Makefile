.SUFFIXES: .pdf .md

.md.pdf: 
	pandoc -s -S --template vzg-slides.tex \
		--latex-engine=xelatex --filter multifilter \
		--slide-level 2 -t beamer -V documentclass=beamer -o $@ $<

default: slides.pdf
