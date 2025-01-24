include "algorithm.asyhdr";
include "../data/Gem2.dat";

setView(45, -35.2, 0);

figureBegin();
Gem2();
highline(u*X-u*Y+w*Z--u*X-v*Y+w*Z--v*X-u*Y+w*Z);
highline(-u*X-w*Y+u*Z--(-u*X-w*Y+v*Z)--(-v*X-w*Y+u*Z));
highline(w*X+u*Y+u*Z--w*X+u*Y+v*Z--w*X+v*Y+u*Z);
highline(v*X-v*Y+v*Z--u*X-v*Y+w*Z--v*X-u*Y+w*Z); // Center
highline(v*X+v*Y+v*Z--w*X+u*Y+v*Z--w*X+v*Y+u*Z); // Right
highline(-v*X-v*Y+v*Z--(-u*X-w*Y+v*Z)--(-v*X-w*Y+u*Z)); // Left
makeChange(-v*X-v*Y+v*Z--(-u*X-w*Y+v*Z)--(-v*X-w*Y+u*Z), v*X-v*Y+v*Z--u*X-v*Y+w*Z--v*X-u*Y+w*Z, -Y+Z);
makeChange(v*X-v*Y+v*Z--u*X-v*Y+w*Z--v*X-u*Y+w*Z, v*X+v*Y+v*Z--w*X+u*Y+v*Z--w*X+v*Y+u*Z, X+Z);
makeChange(v*X+v*Y+v*Z--w*X+u*Y+v*Z--w*X+v*Y+u*Z, -v*X-v*Y+v*Z--(-u*X-w*Y+v*Z)--(-v*X-w*Y+u*Z), 1.35*(u*X-u*Y+w*Z));
figureLine();
Gem2();
makeMove(4*(Z-Y)/5, -180, 0.5);
label("$L^{-1}$", 1.4*Z);
figureNext();
Gem2();
makeMove(4*(Z+X)/5, 180, 0.5);
label("$R$", 1.4*Z);
figureNext();
Gem2();
makeMove(4*(Z-Y)/5, 180, 0.5);
label("$L$", 1.4*Z);
figureNext();
Gem2();
makeMove(4*(Z+X)/5, -180, 0.5);
label("$R^{-1}$", 1.4*Z);
figureEnd();
