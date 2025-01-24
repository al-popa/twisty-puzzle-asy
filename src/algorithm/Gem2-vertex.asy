include "algorithm.asyhdr";
include "../data/Gem2.dat";

setView(0, -45, 0);

figureBegin();
Gem2();
label("$\times 2$", 1.7*Z);
highline(u*X-u*Y+w*Z--u*X-v*Y+w*Z--(-u*X-v*Y+w*Z)--(-u*X-u*Y+w*Z)); // Top front
highline(-u*X+u*Y+w*Z--(-v*X+u*Y+w*Z)--(-v*X-u*Y+w*Z)--(-u*X-u*Y+w*Z)); // Top left
highline(u*X-w*Y+u*Z--u*X-w*Y+v*Z--(-u*X-w*Y+v*Z)--(-u*X-w*Y+u*Z)); // Front top
makeChange(u*X-u*Y+w*Z--u*X-v*Y+w*Z--(-u*X-v*Y+w*Z)--(-u*X-u*Y+w*Z), -u*X+u*Y+w*Z--(-v*X+u*Y+w*Z)--(-v*X-u*Y+w*Z)--(-u*X-u*Y+w*Z), 1.2*(-u*X-u*Y+w*Z));
makeChange(-u*X+u*Y+w*Z--(-v*X+u*Y+w*Z)--(-v*X-u*Y+w*Z)--(-u*X-u*Y+w*Z), u*X-w*Y+u*Z--u*X-w*Y+v*Z--(-u*X-w*Y+v*Z)--(-u*X-w*Y+u*Z), 1.2*(-u*X-w*Y+v*Z));
makeChange(u*X-w*Y+u*Z--u*X-w*Y+v*Z--(-u*X-w*Y+v*Z)--(-u*X-w*Y+u*Z), u*X-u*Y+w*Z--u*X-v*Y+w*Z--(-u*X-v*Y+w*Z)--(-u*X-u*Y+w*Z), Z-Y+0.2*X);
figureLine();
Gem2();
makeMove(4*Z/5, -90, 1.1);
label("$U^{-1}$", 1.7*Z);
figureNext();
Gem2();
makeMove(4*(Z-Y)/5, 180, 0.5);
label("$C$", 1.7*Z);
figureNext();
Gem2();
makeMove(4*Z/5, 90, 1.1);
label("$U$", 1.7*Z);
figureNext();
Gem2();
makeMove(4*(Z-Y)/5, -180, 0.5);
label("$C^{-1}$", 1.7*Z);
figureEnd();
