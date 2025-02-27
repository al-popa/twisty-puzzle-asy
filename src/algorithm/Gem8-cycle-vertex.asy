include "algorithm.asyhdr";
include "../data/Gem8.dat";

setView(0, 0, 45);

figureBegin();
Gem8();
highline(CA--CD--CE);
highline(CB--CF--CD);
highline(HA--CA--CD--HE);
highline(FA--CB--CD--FE);
highline(FA--CB--CF--FB);
highline(AC--AE--AF);
highline(GA--AC--AF--GD);
makeChange(AC--AE--AF, CB--CF--CD, 1.05*CB);
makeChange(CB--CF--CD, CA--CD--CE, (5*CD+CC)/5);
makeChange(CA--CD--CE, AC--AE--AF, 0.4*(-X-Y+Z)+0.8*FA);
figureLine();
Gem8();
makeMove(0.24*(-X-Y+Z), -120, 1);
makeMove(0.26*(-X-Y+Z), 120, 1);
makeMove(0.24*(X-Y-Z), 120, 1);
makeMove(0.26*(X-Y-Z), -120, 1);
label("$F$", 1.15*CE);
figureNext();
Gem8();
makeMove((X-Y+Z)/2, -120, 0.6);
label("$U^{-1}$", 1.15*CE);
figureNext();
Gem8();
makeMove(0.24*(-X-Y+Z), -120, 1);
makeMove(0.26*(-X-Y+Z), 120, 1);
makeMove(0.24*(X-Y-Z), 120, 1);
makeMove(0.26*(X-Y-Z), -120, 1);
label("$F^{-1}$", 1.15*CE);
figureNext();
Gem8();
makeMove((X-Y+Z)/2, 120, 0.6);
label("$U$", 1.15*CE);
figureEnd();
