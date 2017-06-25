.SUFFIXES: .pdf .md

.md.pdf: 
	pandoc -s -S -t beamer --template vzg-slides.tex \
		-H beamer-include.tex \
		--latex-engine=xelatex --filter multifilter \
		--slide-level 2 -o $@ $<

.md.tex: 
	pandoc -s -S -t beamer --template vzg-slides.tex \
		-H beamer-include.tex \
		--latex-engine=xelatex --filter multifilter \
		--slide-level 2 -o $@ $<


default: slides.pdf
