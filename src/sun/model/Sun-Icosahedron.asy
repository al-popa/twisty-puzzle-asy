//
include "sun.asyhdr";

setView(25, -20, 30);

real s = 1 / sqrt(3);
real u = (sqrt(5) - 1) / 2;

triple findEdge(triple c, triple v)
{
	return (v + rotate(120, c) * v) / 2;
}

triple AA = u * X + Y;
triple AB = u * X - Y;
triple AC = -u * X + Y;
triple AD = -u * X - Y;
triple AE = u * Y + Z;
triple AF = u * Y - Z;
triple AG = -u * Y + Z;
triple AH = -u * Y - Z;
triple AI = u * Z + X;
triple AJ = u * Z - X;
triple AK = -u * Z + X;
triple AL = -u * Z - X;

triple BA = (AA + AC + AE) / 3;
triple BB = (AA + AC + AF) / 3;
triple BC = (AA + AE + AI) / 3;
triple BD = (AA + AF + AK) / 3;
triple BE = (AA + AI + AK) / 3;
triple BF = (AB + AD + AG) / 3;
triple BG = (AB + AD + AH) / 3;
triple BH = (AB + AG + AI) / 3;
triple BI = (AB + AH + AK) / 3;
triple BJ = (AB + AI + AK) / 3;
triple BK = (AC + AE + AJ) / 3;
triple BL = (AC + AF + AL) / 3;
triple BM = (AC + AJ + AL) / 3;
triple BN = (AD + AG + AJ) / 3;
triple BO = (AD + AH + AL) / 3;
triple BP = (AD + AJ + AL) / 3;
triple BQ = (AI + AE + AG) / 3;
triple BR = (AJ + AE + AG) / 3;
triple BS = (AK + AF + AH) / 3;
triple BT = (AL + AF + AH) / 3;

transform3 t = rotate(-20, BH);

bool[] conf = new bool[] {false, true, true, true, false, true, true, true, false, true, true, true};

face fa = constructFace(BA, findEdge(BA, AA), conf);
face fb = constructFace(BB, findEdge(BB, AA), conf);
face fc = constructFace(BC, findEdge(BC, AA), conf);
face fd = constructFace(BD, findEdge(BD, AA), conf);
face fe = constructFace(BE, findEdge(BE, AA), conf);
face ff = constructFace(BF, findEdge(BF, AB), conf);
face fg = constructFace(BG, findEdge(BG, AB), conf);
face fh = constructFace(BH, findEdge(BH, AB), conf);
face fi = constructFace(BI, findEdge(BI, AB), conf);
face fj = constructFace(BJ, findEdge(BJ, AB), conf);
face fk = constructFace(BK, findEdge(BK, AC), conf);
face fl = constructFace(BL, findEdge(BL, AC), conf);
face fm = constructFace(BM, findEdge(BM, AC), conf);
face fn = constructFace(BN, findEdge(BN, AD), conf);
face fo = constructFace(BO, findEdge(BO, AD), conf);
face fp = constructFace(BP, findEdge(BP, AD), conf);
face fq = constructFace(BQ, findEdge(BQ, AI), conf);
face fr = constructFace(BR, findEdge(BR, AJ), conf);
face fs = constructFace(BS, findEdge(BS, AK), conf);
face ft = constructFace(BT, findEdge(BT, AL), conf);

real d = glueFaces(fa, fb);
glueFaces(fa, fc, d);
glueFaces(fa, fk, d);
glueFaces(fb, fd, d);
glueFaces(fb, fl, d);
glueFaces(fc, fe, d);
glueFaces(fc, fq, d);
glueFaces(fd, fe, d);
glueFaces(fd, fs, d);
glueFaces(fe, fj, d);
glueFaces(ff, fg, d);
glueFaces(ff, fh, d);
glueFaces(ff, fn, d);
glueFaces(fg, fi, d);
glueFaces(fg, fo, d);
glueFaces(fh, fj, d);
glueFaces(fh, fq, d);
glueFaces(fi, fj, d);
glueFaces(fi, fs, d);
glueFaces(fk, fm, d);
glueFaces(fk, fr, d);
glueFaces(fl, fm, d);
glueFaces(fl, ft, d);
glueFaces(fm, fp, d);
glueFaces(fn, fp, d);
glueFaces(fn, fr, d);
glueFaces(fo, fp, d);
glueFaces(fo, ft, d);
glueFaces(fq, fr, d);
glueFaces(fs, ft, d);

vertex5 va = constructVertex5(fa, fc, fe, fd, fb);
vertex5 vb = constructVertex5(fg, fi, fj, fh, ff);
vertex5 vc = constructVertex5(fa, fb, fl, fm, fk);
vertex5 vd = constructVertex5(ff, fn, fp, fo, fg);
vertex5 ve = constructVertex5(fa, fk, fr, fq, fc);
vertex5 vf = constructVertex5(fb, fd, fs, ft, fl);
vertex5 vg = constructVertex5(ff, fh, fq, fr, fn);
vertex5 vh = constructVertex5(fg, fo, ft, fs, fi);
vertex5 vi = constructVertex5(fc, fq, fh, fj, fe);
vertex5 vj = constructVertex5(fk, fm, fp, fn, fr);
vertex5 vk = constructVertex5(fd, fe, fj, fi, fs);
vertex5 vl = constructVertex5(fl, ft, fo, fp, fm);

// Red, Yellow, Green, Blue, Violet
// Platina, Coral, Iron, Amber

drawFace(fa, Red + Platina);
drawFace(fj, Red + Coral, t, 8);
drawFace(fn, Red + Iron);
drawFace(ft, Red + Amber);

drawFace(fb, Yellow + Platina);
drawFace(fi, Yellow + Coral);
drawFace(fp, Yellow + Amber);
drawFace(fq, Yellow + Iron, t, 8);

drawFace(fc, Green + Coral);
drawFace(ff, Green + Platina, t, 0);
drawFace(fm, Green + Amber);
drawFace(fs, Green + Iron);

drawFace(fd, Blue + Amber);
drawFace(fh, Blue + Iron, t);
drawFace(fk, Blue + Coral);
drawFace(fo, Blue + Platina);

drawFace(fe, Violet + Coral);
drawFace(fg, Violet + Platina);
drawFace(fl, Violet + Iron);
drawFace(fr, Violet + Amber);

drawVertex5(va, Tan);
drawVertex5(vb, Tan, t, 3);
drawVertex5(vc, Tan);
drawVertex5(vd, Tan);
drawVertex5(ve, Tan);
drawVertex5(vf, Tan);
drawVertex5(vg, Tan, t, 1);
drawVertex5(vh, Tan);
drawVertex5(vi, Tan, t, 2);
drawVertex5(vj, Tan);
drawVertex5(vk, Tan);
drawVertex5(vl, Tan);

