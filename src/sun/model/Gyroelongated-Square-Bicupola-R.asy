// Gyroelongated Square Bicupola

include "sun.asyhdr";

setView(-10, -60, 45);

transform3 s = rotate(22.5, Z);

triple AE = X;
triple AF = s * AE;
triple AG = s * AF;
triple AH = s * AG;
triple AI = s * AH;
triple AJ = s * AI;
triple AK = s * AJ;
triple AL = s * AK;
triple AM = s * AL;
triple AN = s * AM;
triple AO = s * AN;
triple AP = s * AO;
triple AQ = s * AP;
triple AR = s * AQ;
triple AS = s * AR;
triple AT = s * AS;

real a = length(AE - AF);
real b = length(AE - AG);
real c = length(AE - AI);
real d = b / c;
real h = sqrt(b * b - a * a) / 2;

triple AA = d * AF;
triple AB = d * AJ;
triple AC = d * AN;
triple AD = d * AR;
triple AU = d * AE;
triple AV = d * AI;
triple AW = d * AM;
triple AX = d * AQ;

real e = length(AA-AE);
real hh = h + sqrt(b * b - e * e);

AA += hh * Z;
AB += hh * Z;
AC += hh * Z;
AD += hh * Z;
AE += h * Z;
AF -= h * Z;
AG += h * Z;
AH -= h * Z;
AI += h * Z;
AJ -= h * Z;
AK += h * Z;
AL -= h * Z;
AM += h * Z;
AN -= h * Z;
AO += h * Z;
AP -= h * Z;
AQ += h * Z;
AR -= h * Z;
AS += h * Z;
AT -= h * Z;
AU -= hh * Z;
AV -= hh * Z;
AW -= hh * Z;
AX -= hh * Z;

transform3 q = rotate(360 / 11, AE);
triple BA = (AE + AF + AG) / 3;
triple BB = q * BA;
triple BC = q * BB;
triple BD = q * BC;
triple BE = q * BD;
triple BF = q * BE;
triple BG = q * BF;
triple BH = q * BG;
triple BI = q * BH;
triple BJ = q * BI;
triple BK = q * BJ;
triple BZ = (BA + BB + BC + BD + BE + BF + BG + BH + BI + BJ + BK) / 11;

transform3 q = rotate(360 / 11, AA);
triple CA = (AA + AE + AG) / 3;
triple CB = q * CA;
triple CC = q * CB;
triple CD = q * CC;
triple CE = q * CD;
triple CF = q * CE;
triple CG = q * CF;
triple CH = q * CG;
triple CI = q * CH;
triple CJ = q * CI;
triple CK = q * CJ;
triple CZ = (CA + CB + CC + CD + CE + CF + CG + CH + CI + CJ + CK) / 11;

real f5 = length(AE) / length(BZ) / 3;
real f4 = length(AA) / length(CZ) / 3;
real r5 = 1 / 3 / f5 / length(BA);
real r4 = 1 / 3 / f4 / length(CA);
f4 *= r4;
f5 *= r5;
real f = (f4 + f5) / 2;
real r = (r4 + r5) / 2;

transform3 t = rotate(-20, AB);
transform3 p = rotate(-20, AS);

bool[] conf4 = new bool[] {true, false, true, true, false, true, true, false, true, true, false};
bool[] conf5 = new bool[] {true, false, true, true, false, true, false, true, false, true, false};

face fa = constructFace(r * AA, f * (AA + AE + AG), conf4);
face fb = constructFace(r * AB, f * (AB + AI + AK), conf4);
face fc = constructFace(r * AC, f * (AC + AM + AO), conf4);
face fd = constructFace(r * AD, f * (AD + AQ + AS), conf4);
face fe = constructFace(r * AE, f * (AA + AE + AG), conf5);
face ff = constructFace(r * AF, f * (AF + AT + AU), conf5);
face fg = constructFace(r * AG, f * (AG + AH + AI), conf5);
face fh = constructFace(r * AH, f * (AF + AG + AH), conf5);
face fi = constructFace(r * AI, f * (AB + AI + AK), conf5);
face fj = constructFace(r * AJ, f * (AH + AJ + AV), conf5);
face fk = constructFace(r * AK, f * (AK + AL + AM), conf5);
face fl = constructFace(r * AL, f * (AJ + AK + AL), conf5);
face fm = constructFace(r * AM, f * (AC + AM + AO), conf5);
face fn = constructFace(r * AN, f * (AL + AN + AW), conf5);
face fo = constructFace(r * AO, f * (AO + AP + AQ), conf5);
face fp = constructFace(r * AP, f * (AN + AO + AP), conf5);
face fq = constructFace(r * AQ, f * (AD + AQ + AS), conf5);
face fr = constructFace(r * AR, f * (AP + AR + AX), conf5);
face fs = constructFace(r * AS, f * (AE + AS + AT), conf5);
face ft = constructFace(r * AT, f * (AR + AS + AT), conf5);
face fu = constructFace(r * AU, f * (AF + AT + AU), conf4);
face fv = constructFace(r * AV, f * (AH + AJ + AV), conf4);
face fw = constructFace(r * AW, f * (AL + AN + AW), conf4);
face fx = constructFace(r * AX, f * (AP + AR + AX), conf4);

real g = length(fa.R[0] - fa.P[0]) / 3;
glueFaces(fe, ff, fg, g);
glueFaces(ff, fg, fh, g);
glueFaces(fg, fh, fi, g);
glueFaces(fh, fi, fj, g);
glueFaces(fi, fj, fk, g);
glueFaces(fj, fk, fl, g);
glueFaces(fk, fl, fm, g);
glueFaces(fl, fm, fn, g);
glueFaces(fm, fn, fo, g);
glueFaces(fn, fo, fp, g);
glueFaces(fo, fp, fq, g);
glueFaces(fp, fq, fr, g);
glueFaces(fq, fr, fs, g);
glueFaces(fr, fs, ft, g);
glueFaces(fs, ft, fe, g);
glueFaces(ft, fe, ff, g);
glueFaces(fa, fe, fg, g);
glueFaces(fb, fi, fk, g);
glueFaces(fc, fm, fo, g);
glueFaces(fd, fq, fs, g);
glueFaces(ff, ft, fu, g);
glueFaces(fh, fj, fv, g);
glueFaces(fl, fn, fw, g);
glueFaces(fp, fr, fx, g);
glueFaces(fa, fb, g);
glueFaces(fb, fc, g);
glueFaces(fc, fd, g);
glueFaces(fd, fa, g);
glueFaces(fu, fv, g);
glueFaces(fv, fw, g);
glueFaces(fw, fx, g);
glueFaces(fx, fu, g);

vertex4 vz = constructVertex4(fa, fb, fc, fd);
vertex4 vza = constructVertex4(fa, fg, fi, fb);
vertex4 vzb = constructVertex4(fb, fk, fm, fc);
vertex4 vzc = constructVertex4(fc, fo, fq, fd);
vertex4 vzd = constructVertex4(fd, fs, fe, fa);
vertex4 vzz = constructVertex4(fx, fw, fv, fu);
vertex4 vzza = constructVertex4(fx, fp, fn, fw);
vertex4 vzzb = constructVertex4(fw, fl, fj, fv);
vertex4 vzzc = constructVertex4(fv, fh, ff, fu);
vertex4 vzzd = constructVertex4(fu, ft, fr, fx);

drawFace(fa, RGB(121, 45, 75), t, 4); // Bordo
drawFace(fb, RGB(255, 106, 3), t); // Orange
drawFace(fc, RGB(196, 0, 66), t, 7); // Red
drawFace(fd, RGB(206, 115, 24), p, 1); // Coffee
drawFace(fe, RGB(164, 174, 173), p, 4); // Grey
drawFace(ff, RGB(233, 211, 174)); // Beige
drawFace(fg, RGB(255, 228, 1)); // Yellow
drawFace(fh, RGB(255, 250, 200)); // Pale Yellow
drawFace(fi, RGB(235, 175, 1), t, 1); // Signal Yellow
drawFace(fj, RGB(230, 252, 129)); // Tea Yellow
drawFace(fk, RGB(1, 156, 220), t, 4); // Light Blue
drawFace(fl, RGB(14, 4, 126)); // Dark Blue
drawFace(fm, RGB(55, 58, 191)); // Brilliant Blue
drawFace(fn, RGB(0, 87, 141)); // Signal Blue
drawFace(fo, RGB(85, 2, 156)); // Purple
drawFace(fp, RGB(124, 125, 189)); // Plum
drawFace(fq, RGB(177, 149, 198), p, 10); // Lilac
drawFace(fr, RGB(246, 166, 191), p, 6); // Pink
drawFace(fs, RGB(77, 37, 1), p); // Chocolate
drawFace(ft, RGB(255, 255, 255), p, 10); // White
drawFace(fu, RGB(90, 173, 65)); // Mint Green
drawFace(fv, RGB(1, 88, 54)); // Grass Green
drawFace(fw, RGB(0, 173, 169)); // Turquase
drawFace(fx, RGB(0, 147, 102)); // Green

drawVertex4(vz, RGB(0, 147, 102), t, 1); // Green
drawVertex4(vza, RGB(0, 173, 169), t, 3); // Turquase
drawVertex4(vzb, RGB(255, 255, 255), t, 0); // White
drawVertex4(vzc, RGB(255, 250, 200)); // Pale Yellow
drawVertex4(vzd, RGB(14, 4, 126), p, 1); // Dark Blue
drawVertex4(vzz, RGB(196, 0, 66)); // Red
drawVertex4(vzza, RGB(121, 45, 75)); // Bordo
drawVertex4(vzzb, RGB(177, 149, 198)); // Lilac
drawVertex4(vzzc, RGB(55, 58, 191)); // Brilliant Blue
drawVertex4(vzzd, RGB(255, 106, 3)); // Orange

