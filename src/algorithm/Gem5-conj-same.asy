include "algorithm.asyhdr";
include "../data/Gem5.dat";

setView(-15, -15, -46.8);

figureBegin();
Gem5();
highline(JA--JB--JC);
highline(BC--BB--JB--JC);
highline(DC--DB--JA--JC);
highline(EC--ED--JA--JB);
highline(HA--HB--HC);
highline(DA--HC--HA--DD);
highline(DC--DB--DE--DF);
highline(DA--DD--DF--DE);
highline(EA--EB--EF--EE);
highline(EC--ED--EE--EF);
highline(BC--BB--BE--BF);
highline(BA--BD--BF--BE);
makeChange(DC--DB--DE--DF, BA--BD--BF--BE, 1.3*JC);
makeChange(DA--DD--DF--DE, BC--BB--BE--BF, 0.7*(DB+DC));
makeChange(BC--BB--BE--BF, EA--EB--EF--EE, 1.3*JB);
makeChange(BA--BD--BF--BE, EC--ED--EE--EF, 0.65*(BB+BC));
makeChange(EA--EB--EF--EE, DA--DD--DF--DE, 0.45*(AF+DE+EE));
makeChange(EC--ED--EE--EF, DC--DB--DE--DF, 0.3*(DB+DE+EE+ED));
makeChange(JA--JB--JC, HA--HB--HC, 0.8*DE+0.4*DF);
figureLine();
Gem5();
makeMove((-X-Y-Z)/3, -120, 1);
label("$L^{-1}$", 0.6*(BB+EC));
figureNext();
Gem5();
makeMove((X-Y+Z)/3, 120, 1);
label("$R$", 0.6*(BB+EC));
figureNext();
Gem5();
makeMove((-X-Y-Z)/3, 120, 1);
label("$L$", 0.6*(BB+EC));
figureNext();
Gem5();
makeMove((X-Y+Z)/3, -120, 1);
label("$R^{-1}$", 0.6*(BB+EC));
figureEnd();
