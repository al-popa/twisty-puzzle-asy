include "algorithm.asyhdr";
include "../data/Cube4.dat";

setView(135, -35.2, 0);

figureBegin();
Cube4();
label("$\times 11$", 1.7*Z);
highline(BA2C--BC4A--CC4AD--CA2C4BD);
highline(BA2C--BA4C--CA4BC--CA2C4BD);
highline(BA2C--BC4A--CC4AG--CA2C4EG);
highline(BA2C--BA4C--CA4CE--CA2C4EG);
makeChange(BA2C--BC4A--CC4AG--CA2C4EG, BA2C--BA4C--CA4BC--CA2C4BD, 1.05*(X+Z));
makeChange(BA2C--BA4C--CA4CE--CA2C4EG, BA2C--BC4A--CC4AD--CA2C4BD, 1.05*(X+Z));
figureLine();
Cube4();
makeMove(3*Z/4, -90, 1.5);
makeMove(Z/4, -90, 1.5);
label("$U^{-1}u^{-1}$", 1.7*Z);
figureNext();
Cube4();
makeMove(0.7*X, 90, 1.5);
makeMove(0.8*X, -90, 1.5);
makeMove(0.7*Y, -90, 1.5);
makeMove(0.8*Y, 90, 1.5);
label("$F$", 1.7*Z);
figureEnd();

