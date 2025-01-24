include "algorithm.asyhdr";
include "../data/Cube3.dat";

setView(135, -35.2, 0);

figureBegin();
Cube3();
highline(BAB--CABC--CBAD--BBA);
highline(BAB--CABE--CBAF--BBA);
highline(BAE--CABE--CEAF--BEA);
highline(BAE--CACE--CEAG--BEA);
makeChange(BAB--CABC--CBAD--BBA, BAB--CABE--CBAF--BBA, 1.1*(X+Y));
makeChange(BAE--CACE--CEAG--BEA, BAE--CABE--CEAF--BEA, 1.1*(Y+Z));
figureLine();
Cube3();
makeMove(0.6*X, 90, 1.5);
makeMove(0.7*X, -90, 1.5);
makeMove(0.6*Y, -90, 1.5);
makeMove(0.7*Y, 90, 1.5);
label("$F$", 1.65*Z);
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
label("$F^{-1}$", 1.65*Z);
figureNext();
Cube3();
makeTurn(120, 1.8, X+Y+Z);
label("$T$", 1.65*Z);
figureEnd();
