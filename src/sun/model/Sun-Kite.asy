//
include "sun.asyhdr";

setView(165, -30, 0);

real CosA = Cos(80);
real CosEdge = CosA / (1 - CosA);
real Edge = aCos(CosEdge);
real CosLower = CosEdge ^ 2 + (1 - CosEdge ^2) * Cos(140);
real Lower = aCos(CosLower);
real s75 = sqrt(3/4);
real cEdge2 = 1 / Cos(Edge / 2) ^ 2;
real f = 1 / 1.45336319381135;

triple A = Z;
triple B = Sin(Edge) * X + Cos(Edge)* Z;
triple C = -Sin(Edge) / 2 * X - Sin(Edge) * s75 * Y + Cos(Edge) * Z;
triple D = -Sin(Edge) / 2 * X + Sin(Edge) * s75 * Y + Cos(Edge) * Z;
triple E = -Sin(Lower) * X + Cos(Lower) * Z;
triple F = Sin(Lower) / 2 * X + Sin(Lower) * s75 * Y + Cos(Lower) * Z;
triple G = Sin(Lower) / 2 * X - Sin(Lower) * s75 * Y + Cos(Lower) * Z;

bool[] conf1 = {false, true, true, false, true, true, false, true, true};
bool[] conf2 = {false, true, false, true, true, false, false, true, true};
bool[] conf3 = {false, true, false, true, false, true, true, false, true};

transform3 tbp = rotate(20, B);
transform3 tbm = rotate(-20, B);
transform3 tcp = rotate(20, C);
transform3 tcm = rotate(-20, C);
transform3 tdp = rotate(20, D);
transform3 tdm = rotate(-20, D);

face findFace(triple ax, triple dir, bool[] cfg)
{
	triple middle = (ax + dir) * cEdge2 / 2;
	face result = constructFace(f * ax, f * middle, cfg);
	return result;
}

face fa = findFace(A, B, conf1);
face fb = findFace(B, G, conf2);
face fc = findFace(C, E, conf2);
face fd = findFace(D, F, conf2);
face fe = findFace(E, F, conf3);
face ff = findFace(F, G, conf3);
face fg = findFace(G, E, conf3);

drawFace(fb, Orange/*, tbm*/);
drawFace(fc, Green/*, tcm*/);
drawFace(fd, Yellow/*, tdm*/);
drawFace(fe, Red/*, tdm, 7*/);
drawFace(ff, Blue/*, tdm, 4*/);
drawFace(fg, White);

//stick(fa.P[0]--fa.P[1]--fa.P[2]--fa.P[3]--fa.P[4]--fa.P[5]--fa.P[6]--fa.P[7]--fa.P[8], Grey);
stick(fa.center--(fa.P[8]+fa.P[0])/2--fa.P[0]--fa.P[1]--fa.P[2]--(fa.P[2]+fa.P[3])/2, Lilac);
stick(fa.center--(fa.P[2]+fa.P[3])/2--fa.P[3]--fa.P[4]--fa.P[5]--(fa.P[5]+fa.P[6])/2, Plum);
stick(fa.center--(fa.P[5]+fa.P[6])/2--fa.P[6]--fa.P[7]--fa.P[8]--(fa.P[8]+fa.P[0])/2, Pink);
stick(fa.P[0]--fa.P[1]--fa.R[0], Lilac);
stick(fa.P[1]--fa.P[2]--fa.R[1], Lilac);
stick(fa.P[2]--fa.P[3]--fa.R[2], Lilac, tdp);
stick(fa.P[2]--fa.P[3]--fa.R[2], Plum, tdm);
stick(fa.P[3]--fa.P[4]--fa.R[3], Plum);
stick(fa.P[4]--fa.P[5]--fa.R[4], Plum);
stick(fa.P[5]--fa.P[6]--fa.R[5], Plum, tcp);
stick(fa.P[5]--fa.P[6]--fa.R[5], Pink, tcm);
stick(fa.P[6]--fa.P[7]--fa.R[6], Pink);
stick(fa.P[7]--fa.P[8]--fa.R[7], Pink);
stick(fa.P[8]--fa.P[0]--fa.R[8], Pink, tbp);
stick(fa.P[8]--fa.P[0]--fa.R[8], Lilac, tbm);
stick(fa.P[0]--fa.R[8]--fa.E[0]--fa.R[0], Pink, tbp);
stick(fa.P[0]--fa.R[8]--fa.E[0]--fa.R[0], Lilac, tbm);
stick(fa.P[1]--fa.R[0]--fa.E[1]--fa.R[1], Lilac);
stick(fa.P[2]--fa.R[1]--fa.E[2]--fa.R[2], Lilac, tdp);
stick(fa.P[2]--fa.R[1]--fa.E[2]--fa.R[2], Plum, tdm);
stick(fa.P[3]--fa.R[2]--fa.E[3]--fa.R[3], Lilac, tdp);
stick(fa.P[3]--fa.R[2]--fa.E[3]--fa.R[3], Plum, tdm);
stick(fa.P[4]--fa.R[3]--fa.E[4]--fa.R[4], Plum);
stick(fa.P[5]--fa.R[4]--fa.E[5]--fa.R[5], Plum, tcp);
stick(fa.P[5]--fa.R[4]--fa.E[5]--fa.R[5], Pink, tcm);
stick(fa.P[6]--fa.R[5]--fa.E[6]--fa.R[6], Plum, tcp);
stick(fa.P[6]--fa.R[5]--fa.E[6]--fa.R[6], Pink, tcm);
stick(fa.P[7]--fa.R[6]--fa.E[7]--fa.R[7], Pink);
stick(fa.P[8]--fa.R[7]--fa.E[8]--fa.R[8], Pink, tbp);
stick(fa.P[8]--fa.R[7]--fa.E[8]--fa.R[8], Lilac, tbm);
stick(fa.R[0]--fa.E[0]--fa.V[1]--fa.E[1], Lilac, tbm);
stick(fa.R[1]--fa.E[1]--fa.V[2]--fa.E[2], Lilac, tdp);
stick(fa.R[2]--fa.E[2]--fa.E[3], Lilac, tdp);
stick(fa.R[2]--fa.E[2]--fa.E[3], Plum, tdm);
stick(fa.R[3]--fa.E[3]--fa.V[4]--fa.E[4], Plum, tdm);
stick(fa.R[4]--fa.E[4]--fa.V[5]--fa.E[5], Plum, tcp);
stick(fa.R[5]--fa.E[5]--fa.E[6], Plum, tcp);
stick(fa.R[5]--fa.E[5]--fa.E[6], Pink, tcm);
stick(fa.R[6]--fa.E[6]--fa.V[7]--fa.E[7], Pink, tcm);
stick(fa.R[7]--fa.E[7]--fa.V[8]--fa.E[8], Pink, tbp);
stick(fa.R[8]--fa.E[8]--fa.E[0], Pink, tbp);
stick(fa.R[8]--fa.E[8]--fa.E[0], Lilac, tbm);

triple L = (rotate(-120, ff.V[5]) * ff.R[4] + rotate(120, ff.V[6]) * ff.R[5]) / 2;
triple M = (rotate(-120, fe.V[5]) * fe.R[4] + rotate(120, fe.V[6]) * fe.R[5]) / 2;
triple P = (rotate(-120, fg.V[5]) * fg.R[4] + rotate(120, fg.V[6]) * fg.R[5]) / 2;

stick(L--ff.E[5]--ff.V[5]--fd.E[7], Tan);
stick(L--fb.E[3]--ff.V[6]--ff.E[5], Tan);
stick(L--tbm * fa.E[1]--fb.V[4]--fb.E[3], Tan);
stick(L--tdp * fa.E[1]--fd.V[7]--fd.E[7], Tan);

stick(M--fe.E[5]--fe.V[5]--fc.E[7], Tan);
stick(M--fd.E[3]--fe.V[6]--fe.E[5], Tan);
stick(M--tdm * fa.E[4]--fd.V[4]--fd.E[3], Tan);
stick(M--tcp * fa.E[4]--fc.V[7]--fc.E[7], Tan);

stick(P--fg.E[5]--fg.V[5]--fb.E[7], Tan);
stick(P--fc.E[3]--fg.V[6]--fg.E[5], Tan);
stick(P--tcm * fa.E[7]--fc.V[4]--fc.E[3], Tan);
stick(P--tbp * fa.E[7]--fb.V[7]--fb.E[7], Tan);

polygon(tbm * P--fa.E[7]--fa.R[7]--(tbm * P + fa.R[7] - fa.E[7]), Background);
polygon((tbm * P + fa.R[7] - fa.E[7])--fa.R[7]--fa.P[8]--(tbm * P + fa.P[8] - fa.E[7]), Background);
polygon((tbm * P + fa.P[8] - fa.E[7])--fa.P[8]--fa.P[0]--(tbp * L + fa.P[0] - fa.E[1]), Background);
polygon((tbp * L + fa.R[0] - fa.E[1])--fa.R[0]--fa.P[0]--(tbp * L + fa.P[0] - fa.E[1]), Background);
polygon(tbp * L--fa.E[1]--fa.R[0]--(tbp * L + fa.R[0] - fa.E[1]), Background);

polygon(tcm * M--fa.E[4]--fa.R[4]--(tcm * M + fa.R[4] - fa.E[4]), Background);
polygon((tcm * M + fa.R[4] - fa.E[4])--fa.R[4]--fa.P[5]--(tcm * M + fa.P[5] - fa.E[4]), Background);
polygon((tcm * M + fa.P[5] - fa.E[4])--fa.P[5]--fa.P[6]--(tcp * P + fa.P[6] - fa.E[7]), Background);
polygon((tcp * P + fa.R[6] - fa.E[7])--fa.R[6]--fa.P[6]--(tcp * P + fa.P[6] - fa.E[7]), Background);
polygon(tcp * P--fa.E[7]--fa.R[6]--(tcp * P + fa.R[6] - fa.E[7]), Background);

polygon(tdm * L--fa.E[1]--fa.R[1]--(tdm * L + fa.R[1] - fa.E[1]), Background);
polygon((tdm * L + fa.R[1] - fa.E[1])--fa.R[1]--fa.P[2]--(tdm * L + fa.P[2] - fa.E[1]), Background);
polygon((tdm * L + fa.P[2] - fa.E[1])--fa.P[2]--fa.P[3]--(tdp * M + fa.P[3] - fa.E[4]), Background);
polygon((tdp * M + fa.R[3] - fa.E[4])--fa.R[3]--fa.P[3]--(tdp * M + fa.P[3] - fa.E[4]), Background);
polygon(tdp * M--fa.E[4]--fa.R[3]--(tdp * M + fa.R[3] - fa.E[4]), Background);

polygon(tbp * fa.P[0]--tbp * fa.R[0]--tbm * fa.P[8], Background);
polygon(tcp * fa.P[6]--tcp * fa.R[6]--tcm * fa.P[5], Background);
polygon(tdp * fa.P[3]--tdp * fa.R[3]--tdm * fa.P[2], Background);

