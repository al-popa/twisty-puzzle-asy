//
include "sun.asyhdr";

setView(30, -75, 0);

real dual(real x)
{
	return sqrt(1 - x * x);
}

real a = 0.63; // Measured
real r = dual(a);
real p = 2 / sqrt(3);
transform3 s = rotate(120, Z);

triple AA = a * unit(p * X + Z);
triple AB = s * AA;
triple AC = s * AB;
triple AD = a * unit(p * X - Z);
triple AE = s * AD;
triple AF = s * AE;

triple BA = r * unit(-X + p * Z);
triple BB = s * BA;
triple BC = s * BB;
triple BD = r * unit(-X - p * Z);
triple BE = s * BD;
triple BF = s * BE;

transform3 t = rotate(-20, AA);

bool[] conf = new bool[] {true, false, true, true, false, true, true, false};

face faceWhite = constructFace(AA, AA + BA, conf);
face faceRed = constructFace(AB, AB + BB, conf);
face faceBlue = constructFace(AC, AC + BC, conf);
face faceYellow = constructFace(AD, AD + BD, conf);
face faceOrange = constructFace(AE, AE + BE, conf);
face faceGreen = constructFace(AF, AF + BF, conf);

real d = glueFaces(faceWhite, faceYellow);
glueFaces(faceRed, faceOrange, d);
glueFaces(faceBlue, faceGreen, d);
glueFaces(faceWhite, faceRed, faceBlue, 3 * d);
glueFaces(faceYellow, faceOrange, faceGreen, 3 * d);

drawFace(faceWhite, White, t);
drawFace(faceRed, Red, t, 1);
drawFace(faceBlue, Blue, t, 7);
drawFace(faceYellow, Yellow, t, 4);
drawFace(faceOrange, Orange);
drawFace(faceGreen, Green);

vertex4 vertex1 = constructVertex4(faceWhite, faceBlue, faceGreen, faceYellow);
vertex4 vertex2 = constructVertex4(faceWhite, faceYellow, faceOrange, faceRed);
vertex4 vertex3 = constructVertex4(faceRed, faceOrange, faceGreen, faceBlue);

drawVertex4(vertex1, Tan, t, 0);
drawVertex4(vertex2, Tan, t, 0);
drawVertex4(vertex3, Tan);

