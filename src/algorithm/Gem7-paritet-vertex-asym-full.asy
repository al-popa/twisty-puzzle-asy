include "algorithm.asyhdr";
include "../data/Gem7.dat";

setView(0, -45, 0);

figureBegin();
Gem7();
highline(CC--UB--MC--MF);
highline(GC--UC--MC--MI);
highline(MA--MC--MI--MD);
highline(MA--MB--MF--MC);
highline(CC--RF--MB--MF);
highline(GC--YF--MD--MI);
makeChange(MA--MC--MI--MD, MA--MB--MF--MC, 0.55*(MA+MC)+0.05*Z);
makeChange(MA--MB--MF--MC, MA--MC--MI--MD, 0.55*(MA+MC)-0.05*Z);
figureLine();
Gem7();
makeMove(7*(Z-Y)/12, 180, 0.75);
makeMove(11*Z/12, 180, 0.65);
label("$F$", 1.25*KC);
figureNext();
Gem7();
makeMove(7*(Z-Y)/12, 180, 0.75);
label("$C$", 1.25*KC);
figureNext();
Gem7();
makeMove(7*(Z-Y)/12, 180, 0.75);
makeMove(0.89*Z, -90, 0.68);
makeMove(0.95*Z, 90, 0.62);
label("$G$", 1.25*KC);
figureNext();
Gem7();
makeMove(11*Z/12, -90, 0.65);
label("$U^{-1}$", 1.25*KC);
figureNext();
Gem7();
makeTurn(180, 1.2);
label("$T$", 1.25*KC);
figureLine();
Gem7();
makeMove(7*(Z-Y)/12, 180, 0.75);
makeMove(0.89*Z, -90, 0.68);
makeMove(0.95*Z, 90, 0.62);
label("$G$", 1.25*KC);
figureNext();
Gem7();
makeMove(-11*Y/12, 180, 0.65);
label("$D^2$", 1.25*KC);
figureNext();
Gem7();
makeMove(7*(Z-Y)/12, 180, 0.75);
makeMove(0.89*Z, -90, 0.68);
makeMove(0.95*Z, 90, 0.62);
label("$G$", 1.25*KC);
figureNext();
Gem7();
makeMove(-11*Y/12, 180, 0.65);
label("$D^2$", 1.25*KC);
figureNext();
Gem7();
makeTurn(180, 1.2);
label("$T$", 1.25*KC);
figureEnd();
