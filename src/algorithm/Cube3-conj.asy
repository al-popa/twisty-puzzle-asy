include "algorithm.asyhdr";
include "../data/Cube3.dat";

setView(135, -35.2, 0);

figureBegin();
Cube3();
highline(AA--BAB--CABC--BAC);
highline(AB--BBA--CBAD--BBD);
highline(AC--BCA--CCAD--BCD);
highline(BAB--CABC--CBAD--BBA);
highline(BAC--CABC--CCAD--BCA);
highline(AA--BAB--CABE--BAE);
highline(AB--BBA--CBAF--BBF);
highline(AE--BEA--CEAF--BEF);
highline(BAB--CABE--CBAF--BBA);
highline(BAE--CABE--CEAF--BEA);
highline(AA--BAC--CACE--BAE);
highline(AC--BCA--CCAG--BCG);
highline(AE--BEA--CEAG--BEG);
highline(BAC--CACE--CCAG--BCA);
highline(BAE--CACE--CEAG--BEA);
makeChange(AA--BAB--CABC--BAC, AB--BBA--CBAD--BBD, 1.2*X+2*Y/3);
makeChange(AB--BBA--CBAF--BBF, AA--BAB--CABE--BAE, 2*X/3+1.2*Y);
makeChange(AC--BCA--CCAD--BCD, AE--BEA--CEAF--BEF, X+Y+2*Z/3);
makeChange(AE--BEA--CEAG--BEG, AC--BCA--CCAD--BCD, 1.1*X-0.3*Y+Z);
makeChange(BAC--CABC--CCAD--BCA, BAB--CABC--CBAD--BBA, 1.2*X+(Y+Z)/3);
makeChange(BAB--CABE--CBAF--BBA, BAE--CABE--CEAF--BEA, 1.2*Y+(X+Z)/3);
makeChange(BAE--CABE--CEAF--BEA, BAC--CACE--CCAG--BCA, X/3+Y+1.1*Z);
figureLine();
Cube3();
makeMove(2*X/3, 90, 1.5);
label("$L$", 1.7*Z);
figureNext();
Cube3();
makeMove(2*Y/3, -90, 1.5);
label("$R^{-1}$", 1.7*Z);
figureNext();
Cube3();
makeMove(2*X/3, -90, 1.5);
label("$L^{-1}$", 1.7*Z);
figureNext();
Cube3();
makeMove(2*Y/3, 90, 1.5);
label("$R$", 1.7*Z);
figureEnd();
