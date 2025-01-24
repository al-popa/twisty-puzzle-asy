all: pdf

png:
	ASYMPTOTE_DIR=${ASYMPTOTE_DIR} asy -f "png" *.asy

eps:
	ASYMPTOTE_DIR=${ASYMPTOTE_DIR} asy -f "eps" *.asy

pdf:
	ASYMPTOTE_DIR=${ASYMPTOTE_DIR} asy -f "pdf" *.asy

pdf3d:
	$(foreach f, $(shell ls *.asy), \
	ASYMPTOTE_DIR=${ASYMPTOTE_DIR} \
	${ASYMPTOTE_DIR}/make-pdf-3D.sh $f ;)

view:
	$(foreach f, $(shell ls *.asy), ASYMPTOTE_DIR=${ASYMPTOTE_DIR} asy -V $f &)

clean:
	rm *.eps *.png *.pdf
