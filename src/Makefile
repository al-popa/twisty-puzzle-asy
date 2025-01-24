all: puzzle-model puzzle-algorithm sun-config sun-sticker sun-model

puzzle-model:
	make pdf3d -Cmodel
	mkdir -p ../out/model/pdf3d && mv model/*.pdf ../out/model/pdf3d
	make png -Cmodel
	mkdir -p ../out/model/png && mv model/*.png ../out/model/png

puzzle-algorithm:
	make pdf -Calgorithm
	mkdir -p ../out/algorithm/pdf && mv algorithm/*.pdf ../out/algorithm/pdf
	make png -Calgorithm
	mkdir -p ../out/algorithm/png && mv algorithm/*.png ../out/algorithm/png

sun-config:
	make pdf -Csun/config
	mkdir -p ../out/sun/config/pdf && mv sun/config/*.pdf ../out/sun/config/pdf
	make png -Csun/config
	mkdir -p ../out/sun/config/png && mv sun/config/*.png ../out/sun/config/png

sun-sticker:
	make pdf -Csun/sticker
	mkdir -p ../out/sun/sticker/pdf && mv sun/sticker/*.pdf ../out/sun/sticker/pdf

sun-model:
	make pdf3d -Csun/model
	mkdir -p ../out/sun/model/pdf3d && mv sun/model/*.pdf ../out/sun/model/pdf3d
	make png -Csun/model
	mkdir -p ../out/sun/model/png && mv sun/model/*.png ../out/sun/model/png

