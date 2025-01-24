//
include "sun.asyhdr";

setView(-50, 35, 0);

real dual(real r)
{
	return sqrt(1 - r * r);
}

real k = -0.5;
real phi = 13.2; // Guess
real cp = Cos(phi);
real sp = Sin(phi);
real p = 0.836; // Guess
real q = dual(p) / Cos(360 / 7);

bool[] conf = new bool[] {false, true, false, true, true, false, true};

face faceRed = constructFace(q * (cp * X + sp * Z), q * (cp * X + sp * Z) + p * (sp * X - cp * Z), conf, k);
face faceGreen = constructFace(q * (cp * Y + sp * Z), q * (cp * Y + sp * Z) + p * (sp * Y - cp * Z), conf, k);
face faceYellow = constructFace(q * (-cp * X + sp * Z), q * (-cp * X + sp * Z) + p * (-sp * X - cp * Z), conf, k);
face faceBlue = constructFace(q * (-cp * Y + sp * Z), q * (-cp * Y + sp * Z) + p * (-sp * Y - cp * Z), conf, k);

real d = glueFaces(faceRed, faceGreen);
glueFaces(faceRed, faceBlue, d);
glueFaces(faceGreen, faceYellow, d);
glueFaces(faceYellow, faceBlue, d);

drawFace(faceRed, Red);
drawFace(faceGreen, Green);
drawFace(faceYellow, Yellow);
drawFace(faceBlue, Blue);

vertex4 v = constructVertex4(faceRed, faceGreen, faceYellow, faceBlue);

drawVertex4(v, Tan);

transform3 t1 = rotate(180, faceRed.V[-1]+faceRed.V[1]);
transform3 t2 = rotate(180, faceGreen.V[-1]+faceGreen.V[1]);
transform3 t3 = rotate(180, faceYellow.V[-1]+faceYellow.V[1]);
transform3 t4 = rotate(180, faceBlue.V[-1]+faceBlue.V[1]);

triple AA = t1 * faceRed.R[0];
triple AB = t4 * faceBlue.R[-2];
triple AC = (AA + AB) / 2;

triple AD = t1 * faceRed.R[-2];
triple AE = t2 * faceGreen.R[0];
triple AF = (AD + AE) / 2;

triple AG = t2 * faceGreen.R[-2];
triple AH = t3 * faceYellow.R[0];
triple AI = (AG + AH) / 2;

triple AJ = t3 * faceYellow.R[-2];
triple AK = t4 * faceBlue.R[0];
triple AL = (AJ + AK) / 2;

triple AM = t1 * faceRed.P[0];
triple AN = t1 * faceRed.P[-1];
triple AO = t1 * faceRed.R[-1];

triple AP = t2 * faceGreen.P[0];
triple AQ = t2 * faceGreen.P[-1];
triple AR = t2 * faceGreen.R[-1];

triple AS = t3 * faceYellow.P[0];
triple AT = t3 * faceYellow.P[-1];
triple AU = t3 * faceYellow.R[-1];

triple AV = t4 * faceBlue.P[0];
triple AW = t4 * faceBlue.P[-1];
triple AX = t4 * faceBlue.R[-1];

stick(AC--AM--AN--AF--AP--AQ--AI--AS--AT--AL--AV--AW, Violet);
stick(AM--AN--AO, Violet);
stick(AP--AQ--AR, Violet);
stick(AS--AT--AU, Violet);
stick(AV--AW--AX, Violet);
stick(faceRed.E[0]--faceRed.E[-1]--AO, Violet);
stick(faceGreen.E[0]--faceGreen.E[-1]--AR, Violet);
stick(faceYellow.E[0]--faceYellow.E[-1]--AU, Violet);
stick(faceBlue.E[0]--faceBlue.E[-1]--AX, Violet);
stick(faceRed.E[-1]--AO--AM--AC, Violet);
stick(faceRed.E[0]--AO--AN--AF, Violet);
stick(faceGreen.E[-1]--AR--AP--AF, Violet);
stick(faceGreen.E[0]--AR--AQ--AI, Violet);
stick(faceYellow.E[-1]--AU--AS--AI, Violet);
stick(faceYellow.E[0]--AU--AT--AL, Violet);
stick(faceBlue.E[-1]--AX--AV--AL, Violet);
stick(faceBlue.E[0]--AX--AW--AC, Violet);
stick(faceRed.V[1]--faceRed.E[0]--AF--faceGreen.E[-1], Violet);
stick(faceGreen.V[1]--faceGreen.E[0]--AI--faceYellow.E[-1], Violet);
stick(faceYellow.V[1]--faceYellow.E[0]--AL--faceBlue.E[-1], Violet);
stick(faceBlue.V[1]--faceBlue.E[0]--AC--faceRed.E[-1], Violet);

