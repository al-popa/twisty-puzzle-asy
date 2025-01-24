include "algorithm.asyhdr";
include "../data/Tuttminx.dat";

setView(32, 0, 18);

figureBegin();
Tuttminx();
highline(EDBH--BB2D--EBDH); // D2
highline(EBDG--BB2D--EDBG); // L1
highline(EGBD--BB2G--EBGD); // L2
highline(EBGI--BB2G--EGBI); // U1
highline(EIBG--BB2I--EBIG); // U2
highline(EBIK--BB2I--EIBK); // R1
highline(EKBI--BB2K--EBKI); // R2
highline(EBKH--BB2K--EKBH); // B1
makeChange(EDBH--BB2D--EBDH, EBDG--BB2D--EDBG, 1.1*BB2D);
makeChange(EGBD--BB2G--EBGD, EBGI--BB2G--EGBI, 1.1*BB2G);
makeChange(EIBG--BB2I--EBIG, EBIK--BB2I--EIBK, 1.1*BB2I);
makeChange(EKBI--BB2K--EBKI, EBKH--BB2K--EKBH, 1.1*BB2K);
figureLine();
Tuttminx();
makeMove(0.31*(BB2D+BB2G+BD2G), 120, 0.53);
makeMove(0.32*(BB2D+BB2G+BD2G), -120, 0.48);
makeMove(0.31*(BB2G+BB2I+BG2I), -120, 0.53);
makeMove(0.32*(BB2G+BB2I+BG2I), 120, 0.48);
label("$F_1$", 1.15*BG2I);
figureNext();
Tuttminx();
makeMove(0.31*(BB2G+BB2I+BG2I), 120, 0.53);
makeMove(0.32*(BB2G+BB2I+BG2I), -120, 0.48);
makeMove(0.31*(BB2I+BB2K+BI2K), -120, 0.53);
makeMove(0.32*(BB2I+BB2K+BI2K), 120, 0.48);
label("$F_2$", 1.15*BG2I);
figureNext();
Tuttminx();
makeMove(0.31*(BB2I+BB2K+BI2K), 120, 0.53);
makeMove(0.32*(BB2I+BB2K+BI2K), -120, 0.48);
makeMove(0.31*(BB2H+BB2K+BH2K), -120, 0.53);
makeMove(0.32*(BB2H+BB2K+BH2K), 120, 0.48);
label("$F_3$", 1.15*BG2I);
figureLine();
Tuttminx();
makeMove(0.31*(BB2H+BB2K+BH2K), 120, 0.53);
makeMove(0.32*(BB2H+BB2K+BH2K), -120, 0.48);
makeMove(0.31*(BB2D+BB2H+BD2H), -120, 0.53);
makeMove(0.32*(BB2D+BB2H+BD2H), 120, 0.48);
label("$F_4$", 1.15*BG2I);
figureNext();
Tuttminx();
makeMove(0.31*(BB2D+BB2H+BD2H), 120, 0.53);
makeMove(0.32*(BB2D+BB2H+BD2H), -120, 0.48);
makeMove(0.31*(BB2D+BB2G+BD2G), -120, 0.53);
makeMove(0.32*(BB2D+BB2G+BD2G), 120, 0.48);
label("$F_5$", 1.15*BG2I);
figureNext();
Tuttminx();
makeMove(0.31*(BB2I+BB2K+BI2K), -120, 0.53);
makeMove(0.32*(BB2I+BB2K+BI2K), 120, 0.48);
makeMove(0.31*(BB2H+BB2K+BH2K), 120, 0.53);
makeMove(0.32*(BB2H+BB2K+BH2K), -120, 0.48);
label("$F_3^{-1}$", 1.15*BG2I);
figureEnd();
