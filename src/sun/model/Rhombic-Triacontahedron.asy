//
include "sun.asyhdr";

setView(-150, -20, 170);

real r = 0.615;
real p = (sqrt(5) - 1) / 2;
//bool[] conf = new bool[] {false, true, false, true, false, true, false, true, false, true, false, true};
bool[] conf = new bool[] {true, true, false, true, false, true, true, true, false, true, false, true};

triple ZA = X + p * Y;
triple ZB = X - p * Y;
triple ZC = -X + p * Y;
triple ZD = -X - p * Y;
triple ZE = Y + p * Z;
triple ZF = Y - p * Z;
triple ZG = -Y + p * Z;
triple ZH = -Y - p * Z;
triple ZI = Z + p * X;
triple ZJ = Z - p * X;
triple ZK = -Z + p * X;
triple ZL = -Z - p * X;

triple AA = (ZA+ZB)/2;
triple AB = (ZA+ZE)/2;
triple AC = (ZA+ZF)/2;
triple AD = (ZA+ZI)/2;
triple AE = (ZA+ZK)/2;
triple AF = (ZB+ZG)/2;
triple AG = (ZB+ZH)/2;
triple AH = (ZB+ZI)/2;
triple AI = (ZB+ZK)/2;
triple AJ = (ZC+ZD)/2;
triple AK = (ZC+ZE)/2;
triple AL = (ZC+ZF)/2;
triple AM = (ZC+ZJ)/2;
triple AN = (ZC+ZL)/2;
triple AO = (ZD+ZG)/2;
triple AP = (ZD+ZH)/2;
triple AQ = (ZD+ZJ)/2;
triple AR = (ZD+ZL)/2;
triple AS = (ZE+ZF)/2;
triple AT = (ZE+ZI)/2;
triple AU = (ZE+ZJ)/2;
triple AV = (ZF+ZK)/2;
triple AW = (ZF+ZL)/2;
triple AX = (ZG+ZH)/2;
triple AY = (ZG+ZI)/2;
triple AZ = (ZG+ZJ)/2;
triple BA = (ZH+ZK)/2;
triple BB = (ZH+ZL)/2;
triple BC = (ZI+ZJ)/2;
triple BD = (ZK+ZL)/2;

face faceAA = constructFace(AA, r*ZA + (1-r)*AA, conf);
face faceAJ = constructFace(AJ, r*ZC + (1-r)*AJ, conf);
face faceAS = constructFace(AS, r*ZE + (1-r)*AS, conf);
face faceAX = constructFace(AX, r*ZG + (1-r)*AX, conf);
face faceBC = constructFace(BC, r*ZI + (1-r)*BC, conf);
face faceBD = constructFace(BD, r*ZK + (1-r)*BD, conf);

face faceAB = constructFace(AB, r*ZA + (1-r)*AB, conf);
face faceAI = constructFace(AI, r*ZB + (1-r)*AI, conf);
face faceAM = constructFace(AM, r*ZC + (1-r)*AM, conf);
face faceAP = constructFace(AP, r*ZD + (1-r)*AP, conf);
face faceAW = constructFace(AW, r*ZF + (1-r)*AW, conf);
face faceAY = constructFace(AY, r*ZI + (1-r)*AY, conf);

face faceAC = constructFace(AC, r*ZA + (1-r)*AC, conf);
face faceAH = constructFace(AH, r*ZB + (1-r)*AH, conf);
face faceAN = constructFace(AN, r*ZC + (1-r)*AN, conf);
face faceAO = constructFace(AO, r*ZD + (1-r)*AO, conf);
face faceAU = constructFace(AU, r*ZE + (1-r)*AU, conf);
face faceBA = constructFace(BA, r*ZH + (1-r)*BA, conf);

face faceAD = constructFace(AD, r*ZA + (1-r)*AD, conf);
face faceAG = constructFace(AG, r*ZB + (1-r)*AG, conf);
face faceAK = constructFace(AK, r*ZC + (1-r)*AK, conf);
face faceAR = constructFace(AR, r*ZD + (1-r)*AR, conf);
face faceAV = constructFace(AV, r*ZF + (1-r)*AV, conf);
face faceAZ = constructFace(AZ, r*ZG + (1-r)*AZ, conf);

face faceAE = constructFace(AE, r*ZA + (1-r)*AE, conf);
face faceAF = constructFace(AF, r*ZB + (1-r)*AF, conf);
face faceAL = constructFace(AL, r*ZC + (1-r)*AL, conf);
face faceAQ = constructFace(AQ, r*ZD + (1-r)*AQ, conf);
face faceAT = constructFace(AT, r*ZE + (1-r)*AT, conf);
face faceBB = constructFace(BB, r*ZH + (1-r)*BB, conf);

real d = length(faceAA.P[0] - faceAA.R[0]) / 2;
glueFaces(faceAA, faceAD, faceAH, d);
glueFaces(faceAA, faceAE, faceAI, d);
glueFaces(faceAB, faceAC, faceAS, d);
glueFaces(faceAB, faceAD, faceAT, d);
glueFaces(faceAC, faceAE, faceAV, d);
glueFaces(faceAF, faceAG, faceAX, d);
glueFaces(faceAF, faceAH, faceAY, d);
glueFaces(faceAG, faceAI, faceBA, d);
glueFaces(faceAJ, faceAM, faceAQ, d);
glueFaces(faceAJ, faceAN, faceAR, d);
glueFaces(faceAK, faceAL, faceAS, d);
glueFaces(faceAK, faceAM, faceAU, d);
glueFaces(faceAL, faceAN, faceAW, d);
glueFaces(faceAO, faceAP, faceAX, d);
glueFaces(faceAO, faceAQ, faceAZ, d);
glueFaces(faceAP, faceAR, faceBB, d);
glueFaces(faceAT, faceAU, faceBC, d);
glueFaces(faceAV, faceAW, faceBD, d);
glueFaces(faceAY, faceAZ, faceBC, d);
glueFaces(faceBA, faceBB, faceBD, d);

transform3 t = rotate(-20, AL);

drawFace(faceAA, Garnet+Red);
drawFace(faceAJ, Garnet+Orange);
drawFace(faceAS, Garnet+Green, t, 8);
drawFace(faceAX, Garnet+Blue);
drawFace(faceBC, Garnet+Yellow);
drawFace(faceBD, Garnet+White);

drawFace(faceAB, Amber+Red);
drawFace(faceAP, Amber+Orange);
drawFace(faceAI, Amber+Green);
drawFace(faceAM, Amber+Blue);
drawFace(faceAW, Amber+Yellow, t, 10);
drawFace(faceAY, Amber+White);

drawFace(faceAC, Platina+Red);
drawFace(faceAO, Platina+Orange);
drawFace(faceAH, Platina+Green);
drawFace(faceAN, Platina+Blue, t, 2);
drawFace(faceBA, Platina+Yellow);
drawFace(faceAU, Platina+White);

drawFace(faceAD, Emerald+Red);
drawFace(faceAR, Emerald+Orange);
drawFace(faceAG, Emerald+Green);
drawFace(faceAK, Emerald+Blue, t, 10);
drawFace(faceAV, Emerald+Yellow);
drawFace(faceAZ, Emerald+White);

drawFace(faceAE, Coral+Red);
drawFace(faceAQ, Coral+Orange);
drawFace(faceAF, Coral+Green);
drawFace(faceAL, Coral+Blue, t);
drawFace(faceBB, Coral+Yellow);
drawFace(faceAT, Coral+White);

vertex5 vertexA = constructVertex5(faceAA, faceAE, faceAC, faceAB, faceAD);
vertex5 vertexB = constructVertex5(faceAA, faceAH, faceAF, faceAG, faceAI);
vertex5 vertexC = constructVertex5(faceAJ, faceAM, faceAK, faceAL, faceAN);
vertex5 vertexD = constructVertex5(faceAJ, faceAR, faceAP, faceAO, faceAQ);
vertex5 vertexE = constructVertex5(faceAB, faceAS, faceAK, faceAU, faceAT);
vertex5 vertexF = constructVertex5(faceAC, faceAV, faceAW, faceAL, faceAS);
vertex5 vertexG = constructVertex5(faceAF, faceAY, faceAZ, faceAO, faceAX);
vertex5 vertexH = constructVertex5(faceAG, faceAX, faceAP, faceBB, faceBA);
vertex5 vertexI = constructVertex5(faceAD, faceAT, faceBC, faceAY, faceAH);
vertex5 vertexJ = constructVertex5(faceAM, faceAQ, faceAZ, faceBC, faceAU);
vertex5 vertexK = constructVertex5(faceAE, faceAI, faceBA, faceBD, faceAV);
vertex5 vertexL = constructVertex5(faceAN, faceAW, faceBD, faceBB, faceAR);

bool mode = true;

drawVertex5(vertexA, Tan, mode);
drawVertex5(vertexB, Tan, mode);
drawVertex5(vertexC, Tan, mode, t, 3);
drawVertex5(vertexD, Tan, mode);
drawVertex5(vertexE, Tan, mode);
drawVertex5(vertexF, Tan, mode, t, 3);
drawVertex5(vertexG, Tan, mode);
drawVertex5(vertexH, Tan, mode);
drawVertex5(vertexI, Tan, mode);
drawVertex5(vertexJ, Tan, mode);
drawVertex5(vertexK, Tan, mode);
drawVertex5(vertexL, Tan, mode);

