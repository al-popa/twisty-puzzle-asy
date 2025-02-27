include "algorithm.asyhdr";
include "../data/Gem8.dat";

setView(45, -35.2, 0);

figureBegin();
Gem8();
highline(CA--CD--CE);
highline(CB--CF--CD);
highline(CC--CE--CF);
highline(CD--CE--CF);
highline(HA--HB--HC);
highline(HA--CA--CE--HB);
highline(HA--DA--DD--HC);
highline(JA--JB--JC);
highline(JA--CC--CE--JC);
highline(JA--BC--BF--JB);
highline(HA--HD--HE);
highline(HA--CA--CD--HE);
highline(HA--DA--DE--HD);
highline(FA--FD--FE);
highline(FA--CB--CD--FE);
highline(FA--AB--AF--FD);
highline(FA--FB--FC);
highline(FA--CB--CF--FB);
highline(FA--AB--AD--FC);
highline(JA--JD--JE);
highline(JA--CC--CF--JD);
highline(JA--BC--BE--JE);
makeChange(DD--DE--DF, CD--CE--CF, 1.1*HA+0.2*HB);
makeChange(FA--AB--AF--FD, HA--CA--CD--HE, 1.3*FE);
makeChange(FA--FD--FE, HA--HD--HE, 0.65*(FE+HE));
makeChange(FA--CB--CD--FE, HA--DA--DE--HD, 1.3*HE);
makeChange(HA--DA--DD--HC, JA--CC--CE--JC, 1.3*HB);
makeChange(HA--HB--HC, JA--JB--JC, 0.65*(HB+JC));
makeChange(HA--CA--CE--HB, JA--BC--BF--JB, 1.3*JC);
makeChange(JA--CC--CE--JC, FA--CB--CF--FB, 1.0*CC);
makeChange(JA--JB--JC, FA--FB--FC, (CC+JA)/2);
makeChange(JA--BC--BF--JB, FA--AB--AD--FC, (BC+2*JA)/3);
figureLine();
Gem8();
makeMove((-X-Y+Z)/4, -120, 1);
label("$L^{-1}$", 1.15*DA);
figureNext();
Gem8();
makeMove((X+Y+Z)/4, 120, 1);
label("$R$", 1.15*DA);
figureNext();
Gem8();
makeMove((-X-Y+Z)/4, 120, 1);
label("$L$", 1.15*DA);
figureNext();
Gem8();
makeMove((X+Y+Z)/4, -120, 1);
label("$R^{-1}$", 1.15*DA);
figureEnd();
