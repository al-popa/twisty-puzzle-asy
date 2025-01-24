include "algorithm.asyhdr";
include "../data/Cube4.dat";

setView(135, -35.2, 0);

figureBegin();
Cube4();
highline(BC2D--BC4D--CC4AD--CC2D4AB);
highline(BA2B--BA4B--CA4BC--CA2B4CD);
highline(BA2C--BC4A--CC4AD--CA2C4BD);
highline(BA2B--BA4B--CA4BE--CA2B4EF);
highline(BA2C--BC4A--CC4AG--CA2C4EG);
makeChange(BC2D--BC4D--CC4AD--CC2D4AB, BA2B--BA4B--CA4BE--CA2B4EF, X+1.1*Y+Z/4);
makeChange(BA2B--BA4B--CA4BC--CA2B4CD, BA2C--BC4A--CC4AD--CA2C4BD, 1.2*X+Y/4+Z/2);
makeChange(BA2C--BC4A--CC4AG--CA2C4EG, BC2D--BC4D--CC4AD--CC2D4AB, X-Y/3+Z);
figureLine();
Cube4();
makeMove(Z/4, -90, 1.5);
label("$u^{-1}$ ($d$)", 1.7*Z);
figureNext();
Cube4();
makeMove(0.7*X, 90, 1.5);
makeMove(0.8*X, -90, 1.5);
makeMove(0.7*Y, -90, 1.5);
makeMove(0.8*Y, 90, 1.5);
label("$F$ ($F^{-1}$)", 1.7*Z);
figureNext();
Cube4();
makeMove(Z/4, 90, 1.5);
label("$u$ ($d^{-1}$)", 1.7*Z);
figureNext();
Cube4();
makeMove(0.7*X, -90, 1.5);
makeMove(0.8*X, 90, 1.5);
makeMove(0.7*Y, 90, 1.5);
makeMove(0.8*Y, -90, 1.5);
label("$F^{-1}$ ($F$)", 1.7*Z);
figureEnd();

