include "algorithm.asyhdr";
include "../data/SunCube.dat";

setView(45, -35.2, 0);

figureBegin();
SunCube();
label("$\times 11$", 1.7*Z);
highline(BCD--BDC--DCDAB);
highline(BCD--BDC--DCDGH);
highline(BGH--BHG--DGHCD);
makeChange(BCD--BDC--DCDGH, BGH--BHG--DGHCD, -1.2*Y+0.2*Z);
makeChange(BGH--BHG--DGHCD, BCD--BDC--DCDGH, -1.2*Y-0.2*Z);
figureLine();
SunCube();
makeMove(0.7*Z, 45, 1.5);
label("$U^{0.5}$", 1.7*Z);
figureNext();
SunCube();
makeMove(-0.7*Y, 180, 1.5);
label("$L^2$", 1.7*Z);
figureEnd();
