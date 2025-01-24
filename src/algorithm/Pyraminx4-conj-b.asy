include "algorithm.asyhdr";
include "../data/Pyraminx4.dat";

setView(-45, -35.2, -60);

figureBegin();
Pyraminx4();

highline(BA2D--BDA--CDAC);
highline(BA2C--BCA--CCAD);
highline(BC2D--BCD--CCAD);

makeChange(BC2D--BCD--CCAD, BA2D--BDA--CDAC, Z-X/3-Y/3);
makeChange(BA2D--BDA--CDAC, BA2C--BCA--CCAB, -Y+X/4+Z/4);
makeChange(BA2C--BCA--CCAD, BC2D--BCD--CCBD, 1.05*(Z+X/4-Y/4));

figureLine();
Pyraminx4();
makeMove((-X-Y-Z)/12, 120, 1.2);
label("$l$", 1.1*(-X+Y+Z));
figureNext();
Pyraminx4();
makeMove((X-Y+Z)/2, -120, 0.8);
label("$R^{-1}$", 1.1*(-X+Y+Z));
figureNext();
Pyraminx4();
makeMove((-X-Y-Z)/12, -120, 1.2);
label("$l^{-1}$", 1.1*(-X+Y+Z));
figureNext();
Pyraminx4();
makeMove((X-Y+Z)/2, 120, 0.8);
label("$R$", 1.1*(-X+Y+Z));
figureEnd();
