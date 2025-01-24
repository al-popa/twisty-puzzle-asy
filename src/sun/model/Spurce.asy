//
include "sun.asyhdr";

setView(40, 170, 30);

real r = 1 / sqrt(3);
real p = (sqrt(5) + 1) / 2;
real s = 1 / 5 / (2*p + 1);
bool[] conf = new bool[] {true, false, true, true, false};

triple ZA = r * (p * X + (p - 1) * Y);
triple ZB = r * (p * X - (p - 1) * Y);
triple ZC = r * (-p * X + (p - 1) * Y);
triple ZD = r * (-p * X - (p - 1) * Y);
triple ZE = r * (p * Y + (p - 1) * Z);
triple ZF = r * (p * Y - (p - 1) * Z);
triple ZG = r * (-p * Y + (p - 1) * Z);
triple ZH = r * (-p * Y - (p - 1) * Z);
triple ZI = r * (p * Z + (p - 1) * X);
triple ZJ = r * (p * Z - (p - 1) * X);
triple ZK = r * (-p * Z + (p - 1) * X);
triple ZL = r * (-p * Z - (p - 1) * X);
triple ZM = r * (X + Y + Z);
triple ZN = r * (X + Y - Z);
triple ZO = r * (X - Y + Z);
triple ZP = r * (X - Y - Z);
triple ZQ = r * (-X + Y + Z);
triple ZR = r * (-X + Y - Z);
triple ZS = r * (-X - Y + Z);
triple ZT = r * (-X - Y - Z);

triple ZU = s * (ZB + ZG + ZH + ZO + ZP);
triple ZV = s * (ZF + ZK + ZL + ZN + ZR);
triple ZW = s * (ZE + ZI + ZJ + ZM + ZQ);

transform3 t = rotate(-20, ZU);

face faceRed = constructFace(ZU, ZA, conf);
face faceYellow = constructFace(ZV, ZA, conf);
face faceBlue = constructFace(ZW, ZA, conf);

glueFaces(faceRed, faceYellow, faceBlue);

drawFace(faceRed, Red, t);
drawFace(faceYellow, Yellow, t, 1);
drawFace(faceBlue, Blue, t, 4);

triple C = (rotate(-120, faceRed.V[2]) * faceRed.R[1] //
+ rotate(120, faceRed.V[3]) * faceRed.R[2] //
+ rotate(-120, faceYellow.V[2]) * faceYellow.R[1] //
+ rotate(120, faceYellow.V[3]) * faceYellow.R[2] //
+ rotate(-120, faceBlue.V[2]) * faceBlue.R[1] //
+ rotate(120, faceBlue.V[3]) * faceBlue.R[2]) / 6;

stick(faceRed.V[2]--faceRed.E[2]--C--faceBlue.E[2], Green, t);
stick(faceYellow.V[2]--faceYellow.E[2]--C--faceRed.E[2], Green, t);
stick(faceBlue.V[2]--faceBlue.E[2]--C--faceYellow.E[2], Green);

