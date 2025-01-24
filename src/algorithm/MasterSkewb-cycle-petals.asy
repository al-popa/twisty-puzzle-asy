include "algorithm.asyhdr";
include "../data/MasterSkewb.dat";

setView(135, 35.2, 0);

figureBegin();
MasterSkewb();
highline(BAB--CA--CB--BAC); // Left up
highline(BDB--CC--CD--BDC); // Left down
highline(BAB--DA--DB--BAE); // Right up
highline(BFB--FB--FD--BFH); //Bottom
makeChange(BAB--CA--CB--BAC, BDB--CC--CD--BDC, 0.55*(AA+AD)+0.1*AC);
makeChange(BDB--CC--CD--BDC, BAB--CA--CB--BAC, 0.55*(AA+AD)+0.1*AB);
makeChange(BAB--DA--DB--BAE, BFB--FB--FD--BFH, 0.55*AB+0.45*AF);
makeChange(BFB--FB--FD--BFH, BAB--DA--DB--BAE, 0.45*AB+0.55*AF);
figureLine();
MasterSkewb();
makeMove(0.5*AF, 120, 1.25);
label("$D$", 1.15*AA);
figureNext();
MasterSkewb();
makeMove(0.5*AC, 120, 1.35);
makeMove(0.5*AE, 120, 1.25);
makeMove(0.5*AC, -120, 1.25);
makeMove(0.5*AE, -120, 1.35);
makeTurn(-120, 1.65, AA, true);
makeTurn(120, 1.75, AA, true);
label("$G$", 1.15*AA);
figureNext();
MasterSkewb();
makeMove(0.5*AF, -120, 1.25);
label("$D^{-1}$", 1.15*AA);
figureEnd();
