include "algorithm.asyhdr";
include "../data/Rhombododecahedron2.dat";

figureBegin();
Rhombododecahedron2();
label("$\times 2$", 1.1*Z);
highline(BA--BD--BE);
highline(CA--CD--CE);
highline(BA--BB--BC);
highline(FA--FD--FE);
highline(BA--BE--BB);
highline(BA--BC--BD);
makeChange(CA--CD--CE, BA--BD--BE, 0.55*(-X-Y)+0.05*Z);
makeChange(BA--BB--BC, FA--FD--FE, 0.55*(X-Y)+0.05*Z);
makeChange(FA--FB--FC, CA--CD--CE, 0.7*(-Y-Z));
figureLine();
Rhombododecahedron2();
makeMove(3*(-X-Y)/8, 180, 0.75);
label("$L$", 1.1*Z);
figureNext();
Rhombododecahedron2();
makeMove(3*(X-Y)/8, 180, 0.75);
label("$R$", 1.1*Z);
figureEnd();
