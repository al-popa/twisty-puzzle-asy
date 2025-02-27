include "algorithm.asyhdr";
include "../data/Comet.dat";

setView(45, 0, 0);

figureBegin();
Comet();
highline(BB--FBB--HBF--FFB);
highline(DBF--CBF--GBF--IBFB);
highline(DFB--CFF--GFF--IFFB);
highline(BB--FAB--HBA--FBB);
highline(DAB--CAB--GAB--IABA);
highline(BB--FAB--HBD--FFB);
highline(DAF--CAB--GAB--IABD);
highline(DBD--CBF--GBF--IBFE);
highline(DFD--CFF--GFF--IFFH);
highline(CBF--DBD--EB--DBF);
highline(CFF--DFB--EF--DFD);
makeChange(BB--FAB--HBA--FBB, DAB--CAB--GAB--IABA, findCenter(GAB--IABA--HBA--FAB)+0.05*(-X-Z));
makeChange(DAF--CAB--GAB--IABD, BB--FAB--HBD--FFB, findCenter(GAB--IABD--HBD--FAB)+0.05*(X-Z));
makeChange(DFD--CFF--GFF--IFFH, DBD--CBF--GBF--IBFE, 0.55*(BF+FDF));
makeChange(DBF--CBF--GBF--IBFB, DFD--CFF--GFF--IFFH, 1.1*GFF);
figureLine();
Comet();
makeMove(13*(X-Z)/30, 180, 0.6);
label("$R$", Z);
figureNext();
Comet();
makeMove(13*(X-Y)/30, 180, 0.6);
label("$C$", Z);
figureNext();
Comet();
makeMove(13*(X-Z)/30, 180, 0.6);
label("$R$", Z);
figureNext();
Comet();
makeMove(13*(-Y-Z)/30, 180, 0.6);
label("$L$", Z);
figureLine();
Comet();
makeMove(13*(X-Z)/30, 180, 0.6);
label("$R$", Z);
figureNext();
Comet();
makeMove(13*(-Y-Z)/30, 180, 0.6);
label("$L$", Z);
figureNext();
Comet();
makeMove(0.46*(-Y-Z), 70.5, 0.65);
makeMove(0.5*(-Y-Z), -70.5, 0.65);
makeMove(0.5*(X-Z), 70.5, 0.65);
makeMove(0.46*(X-Z), -70.5, 0.65);
label("$F$", Z);
figureNext();
Comet();
makeMove(13*(-Y-Z)/30, 180, 0.6);
label("$L$", Z);
figureNext();
Comet();
makeMove(13*(X-Z)/30, 180, 0.6);
label("$R$", Z);
figureLine();
Comet();
makeMove(13*(-Y-Z)/30, 180, 0.6);
label("$L$", Z);
figureNext();
Comet();
makeMove(13*(X-Z)/30, 180, 0.6);
label("$R$", Z);
figureNext();
Comet();
makeMove(13*(X-Y)/30, 180, 0.6);
label("$C$", Z);
figureNext();
Comet();
makeMove(13*(X-Z)/30, 180, 0.6);
label("$R$", Z);
figureEnd();
