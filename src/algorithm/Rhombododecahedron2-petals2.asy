include "algorithm.asyhdr";
include "../data/Rhombododecahedron2.dat";

setView(45, -65, 180);

figureBegin();
Rhombododecahedron2();
label("$\times 2$", 1.4*GJ);
highline(GJ--BB--BC);
highline(GJ--FD--FE);
highline(GG--DD--DE);
highline(GD--DB--DE);
makeChange(GG--DD--DE, GD--DB--DE, DE+0.1*HG);
makeChange(GD--DB--DE, GG--DD--DE, DE+0.1*DA);
makeChange(GJ--BB--BC, GJ--FD--FE, 1.1*GJ+0.1*HD);
makeChange(GJ--FD--FE, GJ--BB--BC, 1.1*GJ+0.1*HB);
figureLine();
Rhombododecahedron2();
makeMove(3*(Z-Y)/8, 180, 0.75);
makeMove(3*(Z+X)/8, 180, 0.75);
label("$G$", 1.4*GJ);
figureNext();
Rhombododecahedron2();
makeMove(3*(X-Y)/8, 180, 0.75);
label("$U$", 1.4*GJ);
figureEnd();
