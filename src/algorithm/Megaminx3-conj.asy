include "algorithm.asyhdr";
include "../data/Megaminx3.dat";

init();
triple axUp = findCenter(AI--AO--AG--AS--AJ);
triple axLeft = findCenter(AG--AS--AD--AT--AH);
triple axRight = findCenter(AG--AO--AB--AP--AH);

figureBegin();
Megaminx3();
highline(AO--BOG--MO--BOI);
highline(BOG--MO--MG--BGO);
highline(AG--BGO--MG--BGS);
highline(BGS--MG--MS--BSG);
highline(AS--BSG--MS--BSJ);
highline(AG--BGH--JG--BGS);
highline(BGS--JG--JS--BSG);
highline(AS--BSD--JS--BSG);
highline(AH--BHG--JH--BHT);
highline(BGH--JG--JH--BHG);
highline(AG--BGH--FG--BGO);
highline(BGO--FG--FO--BOG);
highline(AO--BOB--FO--BOG);
highline(AH--BHG--FH--BHP);
highline(BGH--FG--FH--BHG);
highline(AH--BHP--NH--BHT);
makeChange(AG--BGH--JG--BGS, AH--BHG--JH--BHT, 0.9*axLeft+0.5*axRight);
makeChange(AH--BHG--FH--BHP, AG--BGH--FG--BGO, 0.5*axLeft+0.9*axRight);
makeChange(AS--BSD--JS--BSG, AO--BOB--FO--BOG, 0.4*axUp+0.6*(axLeft+axRight));
makeChange(AO--BOG--MO--BOI, AS--BSD--JS--BSG, 1.0*axUp+0.6*axLeft+0.2*axRight);
makeChange(BGS--JG--JS--BSG, BGH--JG--JH--BHG, 0.95*axLeft+0.3*(axUp+axRight));
makeChange(BGH--FG--FH--BHG, BGO--FG--FO--BOG, 0.95*axRight+0.3*(axUp+axLeft));
makeChange(BGO--FG--FO--BOG, BGS--MG--MS--BSG, 0.3*axLeft+0.5*axRight+0.9*axUp);
figureLine();
Megaminx3();
makeMove(0.85*axLeft, 72, 0.72);
label("$L$", 1.5*axUp);
figureNext();
Megaminx3();
makeMove(0.85*axRight, -72, 0.72);
label("$R^{-1}$", 1.5*axUp);
figureNext();
Megaminx3();
makeMove(0.85*axLeft, -72, 0.72);
label("$L^{-1}$", 1.5*axUp);
figureNext();
Megaminx3();
makeMove(0.85*axRight, 72, 0.72);
label("$R$", 1.5*axUp);
figureEnd();
