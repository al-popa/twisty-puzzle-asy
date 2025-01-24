//
include "sun.asyhdr";

setView(-150, -65, -50);

real r = 1 / sqrt(3);
real p = (1 + sqrt(5)) / 2;

transform3 u = rotate(120, X + Y + Z);
transform3 rx = reflect(O, Y, Z);
transform3 ry = reflect(O, X, Z);
transform3 rz = reflect(O, X, Y);

triple ZA = p * X + (p - 1) * Y;
triple ZB = X + Y + Z;
triple ZC = X + Y - Z;
triple ZD = p * Y + (p - 1) * Z;
triple ZE = p * Y - (p - 1) * Z;

triple AA = r * (ZA + ZB + ZC + ZD + ZE) / 5;
triple AB = u * AA;
triple AC = u * AB;
triple AD = rx * AA;
triple AE = ry * AB;
triple AF = rz * AC;
triple AG = ry * AD;
triple AH = rz * AE;
triple AI = rx * AF;
triple AJ = rx * AC;
triple AK = ry * AA;
triple AL = rz * AB;

transform3 t = rotate(-20, AC);

bool[] conf = new bool[] {true, false, true, false, true, false, true, false, true, false};

face faceRed = constructFace(AA, r * (X + Y + Z), conf);
face faceBlue = constructFace(AB, r * (X + Y + Z), conf);
face faceWhite = constructFace(AC, r *(X + Y + Z), conf);
face facePink = constructFace(AD, r * (-X + Y + Z), conf);
face faceYellow = constructFace(AE, r * (X - Y + Z), conf);
face faceGreen = constructFace(AF, r * (X + Y - Z), conf);
face faceOrange = constructFace(AG, r * (-X - Y + Z), conf);
face faceLightBlue = constructFace(AH, r * (X - Y - Z), conf);
face faceGrey = constructFace(AI, r * (-X + Y - Z), conf);
face faceLightGreen = constructFace(AJ, r * (-X + Y + Z), conf);
face faceViolet = constructFace(AK, r * (X - Y + Z), conf);
face faceLime = constructFace(AL, r * (X + Y - Z), conf);

real d = glueFaces(faceRed, faceBlue, faceWhite);
glueFaces(faceRed, faceBlue, facePink, d);
glueFaces(faceRed, faceWhite, faceGreen, d);
glueFaces(faceRed, facePink, faceLime, d);
glueFaces(faceRed, faceGreen, faceLime, d);
glueFaces(faceBlue, faceWhite, faceYellow, d);
glueFaces(faceBlue, facePink, faceLightGreen, d);
glueFaces(faceBlue, faceYellow, faceLightGreen, d);
glueFaces(faceWhite, faceYellow, faceViolet, d);
glueFaces(faceWhite, faceGreen, faceViolet, d);
glueFaces(facePink, faceGrey, faceLightGreen, d);
glueFaces(facePink, faceGrey, faceLime, d);
glueFaces(faceYellow, faceOrange, faceLightGreen, d);
glueFaces(faceYellow, faceOrange, faceViolet, d);
glueFaces(faceGreen, faceLightBlue, faceViolet, d);
glueFaces(faceGreen, faceLightBlue, faceLime, d);
glueFaces(faceOrange, faceLightBlue, faceGrey, d);
glueFaces(faceOrange, faceLightBlue, faceViolet, d);
glueFaces(faceOrange, faceGrey, faceLightGreen, d);
glueFaces(faceLightBlue, faceGrey, faceLime, d);

drawFace(faceRed, Red, t, 1);
drawFace(faceBlue, Blue, t, 9);
drawFace(faceWhite, White, t);
drawFace(facePink, Pink);
drawFace(faceYellow, Yellow, t, 1);
drawFace(faceGreen, Green, t, 3);
drawFace(faceOrange, Orange);
drawFace(faceLightBlue, LightBlue);
drawFace(faceGrey, Grey);
drawFace(faceLightGreen, LightGreen);
drawFace(faceViolet, Violet, t, 9);
drawFace(faceLime, Lime);

