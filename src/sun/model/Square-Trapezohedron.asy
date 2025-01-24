//
include "sun.asyhdr";

setView(120, -20, 0);

real dual(real x)
{
	return sqrt(1 - x * x);
}

real a = 0.7; // Measured
real r = dual(a);
real p = 1 / sqrt(2);
real q = sqrt(1 - 1 / 2 / (1 + p)) / 2;

transform3 s = rotate(90, Z);

bool[] conf = new bool[] {true, false, true, false, true, true, false, true, false};

triple AA = a * unit(p * X + q * Z);
triple AB = s * AA;
triple AC = s * AB;
triple AD = s * AC;
triple AE = a * unit(p * (X + Y) / sqrt(2) - q * Z);
triple AF = s * AE;
triple AG = s * AF;
triple AH = s * AG;

triple BA = r * unit(q * X - p * Z);
triple BB = s * BA;
triple BC = s * BB;
triple BD = s * BC;
triple BE = r * unit(q * (X + Y) / sqrt(2) + p * Z);
triple BF = s * BE;
triple BG = s * BF;
triple BH = s * BG;

transform3 t = rotate(-20, AA);

face faceOne = constructFace(AA, AA + BA, conf);
face faceTwo = constructFace(AB, AB + BB, conf);
face faceThree = constructFace(AC, AC + BC, conf);
face faceFour = constructFace(AD, AD + BD, conf);
face faceFive = constructFace(AE, AE + BE, conf);
face faceSix = constructFace(AF, AF + BF, conf);
face faceSeven = constructFace(AG, AG + BG, conf);
face faceEight = constructFace(AH, AH + BH, conf);

real d = length(faceOne.P[0] - faceOne.R[0]) / 2;
glueFaces(faceOne, faceTwo, faceFive, d);
glueFaces(faceTwo, faceThree, faceSix, d);
glueFaces(faceThree, faceFour, faceSeven, d);
glueFaces(faceFour, faceOne, faceEight, d);
glueFaces(faceFive, faceSix, faceTwo, d);
glueFaces(faceSix, faceSeven, faceThree, d);
glueFaces(faceSeven, faceEight, faceFour, d);
glueFaces(faceEight, faceFive, faceOne, d);

drawFace(faceOne, Red, t);
drawFace(faceTwo, Blue, t, 6);
drawFace(faceThree, Orange);
drawFace(faceFour, Green, t, 3);
drawFace(faceFive, Yellow, t, 1);
drawFace(faceSix, Pink);
drawFace(faceSeven, Grey);
drawFace(faceEight, Violet, t, 8);

vertex4 vertexTop = constructVertex4(faceOne, faceTwo, faceThree, faceFour);
vertex4 vertexBot = constructVertex4(faceEight, faceSeven, faceSix, faceFive);

drawVertex4(vertexTop, Tan, t, 0);
drawVertex4(vertexBot, Tan);

