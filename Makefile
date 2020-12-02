
TEX = pdflatex

OPT= -output-directory pdf

BUILD = ${TEX} ${OPT} $< ; ${TEX} ${OPT} $< ;

SRCS := $(wildcard source/*.tex)
PDFS := $(SRCS:source/%.tex=pdf/%.pdf)

all: ${PDFS}

pdf/%.pdf : source/%.tex
	${BUILD}

.PHONY: all clean 

#gallery.pdf: gallery/gallery.tex
	# sh gallery/gen-gallery.sh > gallery/gallery.tex;
#	${TEX} -output-directory gallery gallery/gallery.tex

clean:
	/bin/rm -rf *.log *.nav *.out *.snm *.synctex.gz *.toc *.aux tikz/*.log *.vrb
	cd source && /bin/rm -rf *.log *.nav *.out *.snm *.synctex.gz *.toc *.aux *.vrb
	cd pdf && /bin/rm -rf *.log *.nav *.out *.snm *.synctex.gz *.toc *.aux *.vrb
	cd homework && /bin/rm -rf *.log *.nav *.out *.snm *.synctex.gz *.toc *.aux *.vrb
