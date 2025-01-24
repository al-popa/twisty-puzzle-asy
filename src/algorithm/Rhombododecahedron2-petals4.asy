include "algorithm.asyhdr";
include "../data/Rhombododecahedron2.dat";

setView(45, -65, 180);

figureBegin();
Rhombododecahedron2();
label("$\times 3$", 1.3*GJ);
highline(GJ--BB--BC);
highline(GJ--FD--FE);
highline(GG--DD--DE);
highline(GD--DB--DE);
makeChange(GJ--BB--BC, GG--DD--DE, 0.7*(Z-Y));
makeChange(GG--DD--DE, GJ--BB--BC, Z-0.2*Y);
makeChange(GJ--FD--FE, GD--DB--DE, 0.7*(Z+X));
makeChange(GD--DB--DE, GJ--FD--FE, Z+0.2*X);
figureLine();
Rhombododecahedron2();
makeMove(3*(Z+X)/8, 180, 0.75);
label("$L$", 1.4*GJ);
figureNext();
Rhombododecahedron2();
makeMove(3*(Z-Y)/8, 180, 0.75);
label("$R$", 1.4*GJ);
figureEnd();
