SOURCES ?= $(wildcard *.odg)

%.pdf: %.odg
	libreoffice --headless --convert-to pdf $< 

all: $(SOURCES:%.odg=%.pdf)

clean:
	rm -f *.pdf
