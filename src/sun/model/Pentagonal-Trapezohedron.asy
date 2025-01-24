//
include "sun.asyhdr";

setView(-140, 0, 55);

real r = 1 / sqrt(3);
real u = (1 + sqrt(5)) / 2;
real v = u - 1;

triple AA = r * (u * X + v * Y);
triple AB = r * (u * X - v * Y);
triple AC = r * (-u * X + v * Y);
triple AD = r * (-u * X - v * Y);
triple AE = r * (u * Y + v * Z);
triple AF = r * (u * Y - v * Z);
triple AG = r * (-u * Y + v * Z);
triple AH = r * (-u * Y - v * Z);
triple AI = r * (u * Z + v * X);
triple AJ = r * (u * Z - v * X);
triple AK = r * (-u * Z + v * X);
triple AL = r * (-u * Z - v * X);
triple AM = r * (X + Y + Z);
triple AN = r * (X + Y - Z);
triple AO = r * (X - Y + Z);
triple AP = r * (X - Y - Z);
triple AQ = r * (-X + Y + Z);
triple AR = r * (-X + Y - Z);
triple AS = r * (-X - Y + Z);
triple AT = r * (-X - Y - Z);

triple BA = (AA + AB + AI + AM + AO) / 5;
triple BB = (AA + AE + AF + AM + AN) / 5;
triple BC = (AB + AG + AH + AO + AP) / 5;
triple BD = (AC + AD + AL + AR + AT) / 5;
triple BE = (AC + AE + AF + AQ + AR) / 5;
triple BF = (AD + AG + AH + AS + AT) / 5;
triple BG = (AE + AI + AJ + AM + AQ) / 5;
triple BH = (AG + AI + AJ + AO + AS) / 5;
triple BI = (AH + AK + AL + AP + AT) / 5;
triple BJ = (AF + AK + AL + AN + AR) / 5;

transform3 t = rotate(-20, BE);

bool[] conf = new bool[] {true, false, true, false, true, true, true, false, true, false};

face fa = constructFace(BA, AI, conf);
face fb = constructFace(BB, AE, conf);
face fc = constructFace(BC, AG, conf);
face fd = constructFace(BD, AL, conf);
face fe = constructFace(BE, AF, conf);
face ff = constructFace(BF, AH, conf);
face fg = constructFace(BG, AM, conf);
face fh = constructFace(BH, AO, conf);
face fi = constructFace(BI, AT, conf);
face fj = constructFace(BJ, AR, conf);

real d = glueFaces(fa, fh, fc);
glueFaces(fh, fc, ff, d);
glueFaces(fc, ff, fi, d);
glueFaces(ff, fi, fd, d);
glueFaces(fi, fd, fj, d);
glueFaces(fd, fj, fe, d);
glueFaces(fj, fe, fb, d);
glueFaces(fe, fb, fg, d);
glueFaces(fb, fg, fa, d);
glueFaces(fg, fa, fh, d);

vertex5 va = constructVertex5(fa, fc, fi, fj, fb);
vertex5 vb = constructVertex5(fd, ff, fh, fg, fe);

drawFace(fa, Red);
drawFace(fb, Green, t, 9);
drawFace(fc, Blue);
drawFace(fd, Orange, t, 7);
drawFace(fe, LightBlue, t);
drawFace(ff, LightGreen);
drawFace(fg, Lime, t, 3);
drawFace(fh, Pink);
drawFace(fi, Yellow);
drawFace(fj, Violet, t, 1);

drawVertex5(va, Tan);
drawVertex5(vb, Tan, t, 4);

