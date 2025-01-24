include "algorithm.asyhdr";
include "../data/Gem8.dat";

setView(0, 0, -45);

figureBegin();
Gem8();
highline(AD--AE--AF);
makeChange(DD--DE--DF, AD--AE--AF, 1.2*GA);
makeChange(AD--AE--AF, BD--BE--BF, 1.2*EA);
label("$\times 2$", 1.15*DE);
figureLine();
Gem8();
makeMove((X-Y-Z)/4, -120, 1);
label("$D^{-1}$", 1.15*DE);
figureNext();
Gem8();
makeMove((-X-Y+Z)/4, 120, 1);
label("$U$", 1.15*DE);
figureNext();
Gem8();
makeMove((X-Y-Z)/4, 120, 1);
label("$D$", 1.15*DE);
figureNext();
Gem8();
makeMove((-X-Y+Z)/4, 120, 1);
label("$U$", 1.15*DE);
figureEnd();
