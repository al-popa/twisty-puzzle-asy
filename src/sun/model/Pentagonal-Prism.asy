//
include "sun.asyhdr";

setView(-160, -20, 0);

real a = Sin(36);
real b = sqrt(a * a + 1);
real p = 1 / b;
real q = a / b;

transform3 s = rotate(72, Z);

triple AA = p * X + q * Z;
triple AB = s * AA;
triple AC = s * AB;
triple AD = s * AC;
triple AE = s * AD;
triple AF = p * X - q * Z;
triple AG = s * AF;
triple AH = s * AG;
triple AI = s * AH;
triple AJ = s * AI;

triple BA = (AA + AB + AF + AG) / 4;
triple BB = s * BA;
triple BC = s * BB;
triple BD = s * BC;
triple BE = s * BD;

transform3 t = rotate(-20, BB);

bool[] conf = new bool[] {true, true, true, false, true, true, true, false};

face fa = constructFace(BA, AB, conf);
face fb = constructFace(BB, AC, conf);
face fc = constructFace(BC, AD, conf);
face fd = constructFace(BD, AE, conf);
face fe = constructFace(BE, AA, conf);

real d = glueFaces(fa, fb);
glueFaces(fb, fc, d);
glueFaces(fc, fd, d);
glueFaces(fd, fe, d);
glueFaces(fe, fa, d);

vertex5 va = constructVertex5(fa, fb, fc, fd, fe);
vertex5 vb = constructVertex5(fe, fd, fc, fb, fa);

drawFace(fa, Red, t, 7);
drawFace(fb, Yellow, t);
drawFace(fc, Green, t, 3);
drawFace(fd, Blue);
drawFace(fe, Violet);

drawVertex5(va, Tan, t, 1);
drawVertex5(vb, Tan, t, 3);

