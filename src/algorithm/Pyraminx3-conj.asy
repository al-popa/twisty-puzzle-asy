include "algorithm.asyhdr";
include "../data/Pyraminx3.dat";

setView(-45, -35.2, -60);

figureBegin();
Pyraminx3();
highline(BAC--BCA--CACD);
highline(BAD--BDA--CACD);
highline(BCD--BDC--CACD);
makeChange(BCD--BDC--CACD, BAD--BDA--CACD, -X/2-Y/6+Z/2);
makeChange(BAC--BCA--CACD, BCD--BDC--CBCD, 1.1*Z);
makeChange(BAD--BDA--CACD, BAC--BCA--CABC, -1.1*Y);
figureLine();
Pyraminx3();
makeMove((-X-Y-Z)/3, 120, 1);
label("$L$", 1.1*(-X+Y+Z));
figureNext();
Pyraminx3();
makeMove((X-Y+Z)/3, -120, 1);
label("$R^{-1}$", 1.1*(-X+Y+Z));
figureNext();
Pyraminx3();
makeMove((-X-Y-Z)/3, -120, 1);
label("$L^{-1}$", 1.1*(-X+Y+Z));
figureNext();
Pyraminx3();
makeMove((X-Y+Z)/3, 120, 1);
label("$R$", 1.1*(-X+Y+Z));
figureEnd();
