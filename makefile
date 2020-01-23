files=$(patsubst %.dtx,%.pdf,$(wildcard *.dtx))
all: $(files)


%.dtx: %.ins
	latex $<

%.pdf: %.dtx
	-rm $(patsubst %.dtx,%.sty,$<)
	latex $(patsubst %.dtx,%.ins,$<)
	xelatex $<
	makeindex -s gind.ist -o $(patsubst %.dtx,%.ind,$<) $(patsubst %.dtx,%.idx,$<)
	makeindex -s gglo.ist -o $(patsubst %.dtx,%.gls,$<) $(patsubst %.dtx,%.glo,$<)
	xelatex $<
	xelatex $<

clean:
	-rm *.pdf
	-rm *.log
	-rm *.out
	-rm *.aux
	-rm *.bib
	-rm *.snm
	-rm *.toc
	-rm *.nav
	-rm *.idx
	-rm *.sty
