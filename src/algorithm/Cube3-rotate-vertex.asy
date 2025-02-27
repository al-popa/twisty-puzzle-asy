include "algorithm.asyhdr";
include "../data/Cube3.dat";

setView(135, -35.2, 0);

figureBegin();
Cube3();
label("$\times 2$", 1.65*Z);

highline(AB--BBA--CBAD--BBD);
highline(AC--BCA--CCAD--BCD);
highline(AB--BBA--CBAF--BBF);
highline(AC--BCA--CCAG--BCG);
makeChange(AC--BCA--CCAD--BCD, AC--BCA--CCAG--BCG, 1.1*(X+Z)-2*Y/3);
makeChange(AC--BCD--CCDG--BCG, AC--BCA--CCAD--BCD, 1.1*(X-Y)+2*Z/3);
makeChange(AC--BCA--CCAG--BCG, AC--BCD--CCDG--BCG, 1.1*(Z-Y)+2*X/3);
makeChange(AB--BBA--CBAD--BBD, AB--BBA--CBAF--BBF, 1.1(X+Y)-2*Z/3);
makeChange(AB--BBD--CBDF--BBF, AB--BBA--CBAD--BBD, 1.1*(X-Z)+2*Y/3);
makeChange(AB--BBA--CBAF--BBF, AB--BBD--CBDF--BBF, 2*X/3+1.1*(Y-Z));
figureLine();
Cube3();
makeMove(0.6*X, 90, 1.5);
makeMove(0.7*X, -90, 1.5);
makeMove(0.6*Y, -90, 1.5);
makeMove(0.7*Y, 90, 1.5);
label("$F^2$", 1.65*Z);
figureNext();
Cube3();
makeTurn(-120, 1.8, X+Y+Z);
label("$T^{-1}$", 1.65*Z);
figureNext();
Cube3();
makeMove(0.6*X, -90, 1.5);
makeMove(0.7*X, 90, 1.5);
makeMove(0.6*Y, 90, 1.5);
makeMove(0.7*Y, -90, 1.5);
label("$F^{-2}$", 1.65*Z);
figureNext();
Cube3();
makeTurn(120, 1.8, X+Y+Z);
label("$T$", 1.65*Z);
figureEnd();
