//
include "sun.asyhdr";

setView(-120, -15, 0);

real r = 0.615;
real p = (sqrt(5) - 1) / 2;
//bool[] conf = new bool[] {false, true, false, true, false, true, false, true, false, true, false, true};
bool[] conf = new bool[] {true, true, false, true, false, true, true, true, false, true, false, true};
bool[] confT = new bool[] {true, true, false, true, false, true, false, true, true, true, false, true};
bool[] confP = new bool[] {true, true, false, true, true, true, false, true, false, true, false, true};

triple ZA = X + p * Y;
triple ZB = X - p * Y;
triple ZC = -X + p * Y; //
triple ZD = -X - p * Y; ///
triple ZE = Y + p * Z;
triple ZF = Y - p * Z;
triple ZG = -Y + p * Z; //
triple ZH = -Y - p * Z; //
triple ZI = Z + p * X;
triple ZJ = Z - p * X; //
triple ZK = -Z + p * X;
triple ZL = -Z - p * X; //

transform3 s = rotate(36, ZD);

triple ZZC = s * ZC;
triple ZZD = s * ZD;
triple ZZG = s * ZG;
triple ZZH = s * ZH;
triple ZZJ = s * ZJ;
triple ZZL = s * ZL;

triple AA = (ZA+ZB)/2;
triple AB = (ZA+ZE)/2;
triple AC = (ZA+ZF)/2;
triple AD = (ZA+ZI)/2;
triple AE = (ZA+ZK)/2;
triple AF = (ZB+ZG)/2;
triple AG = (ZB+ZH)/2;
triple AH = (ZB+ZI)/2;
triple AI = (ZB+ZK)/2;
triple AJ = (ZC+ZD)/2; //
triple AK = (ZC+ZE)/2;
triple AL = (ZC+ZF)/2;
triple AM = (ZC+ZJ)/2; //
triple AN = (ZC+ZL)/2; //
triple AO = (ZD+ZG)/2; //
triple AP = (ZD+ZH)/2; //
triple AQ = (ZD+ZJ)/2; //
triple AR = (ZD+ZL)/2; //
triple AS = (ZE+ZF)/2;
triple AT = (ZE+ZI)/2;
triple AU = (ZE+ZJ)/2;
triple AV = (ZF+ZK)/2;
triple AW = (ZF+ZL)/2;
triple AX = (ZG+ZH)/2; //
triple AY = (ZG+ZI)/2;
triple AZ = (ZG+ZJ)/2; //
triple BA = (ZH+ZK)/2;
triple BB = (ZH+ZL)/2; //
triple BC = (ZI+ZJ)/2;
triple BD = (ZK+ZL)/2;
triple AAJ = (ZZC+ZD)/2;
triple AAM = (ZZC+ZZJ)/2;
triple AAN = (ZZC+ZZL)/2;
triple AAO = (ZD+ZZG)/2;
triple AAP = (ZD+ZZH)/2;
triple AAQ = (ZD+ZZJ)/2;
triple AAR = (ZD+ZZL)/2;
triple AAX = (ZZG+ZZH)/2;
triple AAZ = (ZZG+ZZJ)/2;
triple BBB = (ZZH+ZZL)/2;

transform3 t = rotate(-20, AU);
transform3 p = rotate(-20, AAJ);

face faceAA = constructFace(AA, r*ZA + (1-r)*AA, conf);
face faceAAJ = constructFace(AAJ, r*ZZC + (1-r)*AAJ, conf);
face faceAS = constructFace(AS, r*ZE + (1-r)*AS, conf);
face faceAAX = constructFace(AAX, r*ZZG + (1-r)*AAX, conf);
face faceBC = constructFace(BC, r*ZI + (1-r)*BC, confT);
face faceBD = constructFace(BD, r*ZK + (1-r)*BD, confP);

face faceAB = constructFace(AB, r*ZA + (1-r)*AB, conf);
face faceAI = constructFace(AI, r*ZB + (1-r)*AI, conf);
face faceAAM = constructFace(AAM, r*ZZC + (1-r)*AAM, conf);
face faceAAP = constructFace(AAP, r*ZD + (1-r)*AAP, conf);
face faceAW = constructFace(AW, r*ZF + (1-r)*AW, confT);
face faceAY = constructFace(AY, r*ZI + (1-r)*AY, confP);

face faceAC = constructFace(AC, r*ZA + (1-r)*AC, conf);
face faceAH = constructFace(AH, r*ZB + (1-r)*AH, conf);
face faceAAN = constructFace(AAN, r*ZZC + (1-r)*AAN, conf);
face faceAAO = constructFace(AAO, r*ZD + (1-r)*AAO, conf);
face faceAU = constructFace(AU, r*ZE + (1-r)*AU, confP);
face faceBA = constructFace(BA, r*ZK + (1-r)*BA, confT);

face faceAD = constructFace(AD, r*ZA + (1-r)*AD, conf);
face faceAG = constructFace(AG, r*ZB + (1-r)*AG, confP);
face faceAK = constructFace(AK, r*ZE + (1-r)*AK, confT);
face faceAAR = constructFace(AAR, r*ZD + (1-r)*AAR, conf);
face faceAV = constructFace(AV, r*ZF + (1-r)*AV, conf);
face faceAAZ = constructFace(AAZ, r*ZZG + (1-r)*AAZ, conf);

face faceAE = constructFace(AE, r*ZA + (1-r)*AE, conf);
face faceAF = constructFace(AF, r*ZB + (1-r)*AF, confT);
face faceAL = constructFace(AL, r*ZF + (1-r)*AL, confP);
face faceAAQ = constructFace(AAQ, r*ZD + (1-r)*AAQ, conf);
face faceAT = constructFace(AT, r*ZE + (1-r)*AT, conf);
face faceBBB = constructFace(BBB, r*ZZH + (1-r)*BBB, conf);

/*
#AA <- ZA+ZB
#AB <- ZA+ZE
#AC <- ZA+ZF
#AD <- ZA+ZI
#AE <- ZA+ZK
#AF <- ZB+ZG
#AG <- ZB+ZH
#AH <- ZB+ZI
#AI <- ZB+ZK
#AJ <- ZC+ZD
#AK <- ZC+ZE
#AL <- ZC+ZF
#AM <- ZC+ZJ
#AN <- ZC+ZL
#AO <- ZD+ZG
#AP <- ZD+ZH
#AQ <- ZD+ZJ
#AR <- ZD+ZL
#AS <- ZE+ZF
#AT <- ZE+ZI
#AU <- ZE+ZJ
#AV <- ZF+ZK
#AW <- ZF+ZL
#AX <- ZG+ZH
#AY <- ZG+ZI
#AZ <- ZG+ZJ
#BA <- ZH+ZK
#BB <- ZH+ZL
#BC <- ZI+ZJ
BD <- ZK+ZL

ZA--ZB--ZI -> AA, AD, AH
ZA--ZB--ZK -> AA, AE, AI
ZA--ZE--ZF -> AB, AC, AS
ZA--ZE--ZI -> AB, AD, AT
ZA--ZF--ZK -> AC, AE, AV
ZB--ZG--ZH -> AF, AG, AX
ZB--ZG--ZI -> AF, AH, AY
ZB--ZH--ZK -> AG, AI, BA
ZC--ZD--ZJ -> AJ, AM, AQ
ZC--ZD--ZL -> AJ, AN, AR
ZC--ZE--ZF -> AK, AL, AS
ZC--ZE--ZJ -> AK, AM, AU
ZC--ZF--ZL -> AL, AN, AW
ZD--ZG--ZH -> AO, AP, AX
ZD--ZG--ZJ -> AO, AQ, AZ
ZD--ZH--ZL -> AP, AR, BB
ZE--ZI--ZJ -> AT, AU, BC
ZF--ZK--ZL -> AV, AW, BD
ZG--ZI--ZJ -> AY, AZ, BC
ZH--ZK--ZL -> BA, BB, BD
*/

real d = length(faceAA.P[0] - faceAA.R[0]) / 2;
glueFaces(faceAA, faceAD, faceAH, d);
glueFaces(faceAA, faceAE, faceAI, d);
glueFaces(faceAB, faceAC, faceAS, d);
glueFaces(faceAB, faceAD, faceAT, d);
glueFaces(faceAC, faceAE, faceAV, d);
glueFaces(faceAF, faceAH, faceAY, d);
glueFaces(faceAF, faceAAX, faceAY, d);
glueFaces(faceAG, faceAI, faceBA, d);
glueFaces(faceAG, faceBA, faceBBB, d); //
glueFaces(faceAAJ, faceAAM, faceAAQ, d);
glueFaces(faceAAJ, faceAAN, faceAAR, d);
glueFaces(faceAK, faceAL, faceAAM, d);
glueFaces(faceAK, faceAL, faceAS, d);
glueFaces(faceAAN, faceAW, faceBD, d);
glueFaces(faceAAO, faceAAP, faceAAX, d);
glueFaces(faceAAO, faceAAQ, faceAAZ, d);
glueFaces(faceAAP, faceAAR, faceBBB, d);
glueFaces(faceAT, faceAU, faceBC, d);
glueFaces(faceAU, faceAAZ, faceBC, d);
glueFaces(faceAV, faceAW, faceBD, d);
glueFaces(faceAF, faceAG, d);
glueFaces(faceAK, faceAU, d);
glueFaces(faceAL, faceAW, d);
glueFaces(faceAY, faceBC, d);
glueFaces(faceBA, faceBD, d);

drawFace(faceAA, Garnet+Red);
drawFace(faceAAJ, Garnet+Orange, p);
drawFace(faceAS, Garnet+Green);
drawFace(faceAAX, Garnet+Blue);
drawFace(faceBC, Garnet+Yellow, t, 4);
drawFace(faceBD, Garnet+White);

drawFace(faceAB, Amber+Red);
drawFace(faceAAP, Amber+Orange);
drawFace(faceAI, Amber+Green);
drawFace(faceAAM, Amber+Blue, p, 2);
drawFace(faceAW, Amber+Yellow);
drawFace(faceAY, Amber+White);

drawFace(faceAC, Platina+Red);
drawFace(faceAAO, Platina+Orange);
drawFace(faceAH, Platina+Green);
drawFace(faceAAN, Platina+Blue, p, 10);
drawFace(faceBA, Platina+Yellow);
drawFace(faceAU, Platina+White, t);

drawFace(faceAD, Emerald+Red);
drawFace(faceAAR, Emerald+Orange, p, 2);
drawFace(faceAG, Emerald+Green);
drawFace(faceAK, Emerald+Blue, t, 10);
drawFace(faceAV, Emerald+Yellow);
drawFace(faceAAZ, Emerald+White, t, 4);

drawFace(faceAE, Coral+Red);
drawFace(faceAAQ, Coral+Orange, p, 10);
drawFace(faceAF, Coral+Green);
drawFace(faceAL, Coral+Blue);
drawFace(faceBBB, Coral+Yellow);
drawFace(faceAT, Coral+White, t, 2);

vertex5 vertexA = constructVertex5(faceAA, faceAE, faceAC, faceAB, faceAD);
vertex5 vertexB = constructVertex5(faceAA, faceAH, faceAF, faceAG, faceAI);
vertex5 vertexC = constructVertex5(faceAAJ, faceAAM, faceAL, faceAW, faceAAN);
vertex5 vertexD = constructVertex5(faceAAJ, faceAAR, faceAAP, faceAAO, faceAAQ);
vertex5 vertexE = constructVertex5(faceAB, faceAS, faceAK, faceAU, faceAT);
vertex5 vertexF = constructVertex5(faceAC, faceAV, faceAW, faceAL, faceAS);
vertex5 vertexG = constructVertex5(faceAY, faceBC, faceAAZ, faceAAO, faceAAX);
vertex5 vertexH = constructVertex5(faceAG, faceAF, faceAAX, faceAAP, faceBBB);
vertex5 vertexI = constructVertex5(faceAD, faceAT, faceBC, faceAY, faceAH);
vertex5 vertexJ = constructVertex5(faceAAM, faceAAQ, faceAAZ, faceAU, faceAK);
vertex5 vertexK = constructVertex5(faceAE, faceAI, faceBA, faceBD, faceAV);
vertex5 vertexL = constructVertex5(faceAAN, faceBD, faceBA, faceBBB, faceAAR);

bool mode = true;

drawVertex5(vertexA, Tan, mode);
drawVertex5(vertexB, Tan, mode);
drawVertex5(vertexC, Tan, mode, p, 0);
drawVertex5(vertexD, Tan, mode, p, 0);
drawVertex5(vertexE, Tan, mode, t, 3);
drawVertex5(vertexF, Tan, mode);
drawVertex5(vertexG, Tan, mode);
drawVertex5(vertexH, Tan, mode);
drawVertex5(vertexI, Tan, mode);
drawVertex5(vertexJ, Tan, mode, t, 3);
drawVertex5(vertexK, Tan, mode);
drawVertex5(vertexL, Tan, mode);

