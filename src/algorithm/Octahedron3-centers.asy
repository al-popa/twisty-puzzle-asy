include "algorithm.asyhdr";
include "../data/Octahedron3.dat";

setView(25, 25, -51);

figureBegin();
Octahedron3();
highline(BAD--BAE--CADE);
highline(BDB--BDF--CBDF);
highline(BBD--BBF--CBDF);
makeChange(BAD--BAE--CADE, BBD--BBF--CBDF, 0.65*(BDF+BFD));
makeChange(BDB--BDF--CBDF, BAD--BAE--CADE, 1.3*BDA);
makeChange(BBD--BBF--CBDF, BDB--BDF--CBDF, 0.2*(BBD+BDB+4*CBDF));
figureLine();
Octahedron3();
makeMove(2*CBDE/3, -120, 0.8);
label("$U^{-1}$", 1.15*AD);
figureNext();
Octahedron3();
makeMove(2*CADE/3, 120, 0.8);
makeMove(0.6*CACF, 120, 0.8);
makeMove(0.7*CACF, -120, 0.8);
label("$F$", 1.15*AD);
figureNext();
Octahedron3();
makeMove(2*CBDE/3, 120, 0.8);
label("$U$", 1.15*AD);
figureEnd();
