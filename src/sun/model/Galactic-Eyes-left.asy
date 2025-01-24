//
include "sun.asyhdr";

setView(-135, -25, 0);

real dual(real x)
{
	return sqrt(1 - x * x);
}

real p = (1 + (19 - 3 * sqrt(33)) ** (1 / 3) + (19 + 3 * sqrt(33)) ** (1 / 3)) / 3;
real q = p * p;
real a = 0.9; // Measured
real r = dual(a);

transform3 s2 = rotate(180, X);
transform3 s3 = rotate(120, X + Y + Z);
transform3 s4 = rotate(90, Z);

bool[] conf = new bool[] {true, false, true, false, true, false, true, true, false, true, false};

triple AZ = unit(X / q + Y / p + Z);
triple AY = unit(cross(unit(X + Y + Z), AZ));
triple BZ = cross(AZ, AY);

triple AA = a * AZ;
triple AB = s3 * AA;
triple AC = s3 * AB;
triple AD = s4 * AA;
triple AE = s4 * AB;
triple AF = s4 * AC;
triple AG = s4 * AD;
triple AH = s4 * AE;
triple AI = s4 * AF;
triple AJ = s4 * AG;
triple AK = s4 * AH;
triple AL = s4 * AI;
triple AM = s2 * AA;
triple AN = s2 * AB;
triple AO = s2 * AC;
triple AP = s2 * AD;
triple AQ = s2 * AE;
triple AR = s2 * AF;
triple AS = s2 * AG;
triple AT = s2 * AH;
triple AU = s2 * AI;
triple AV = s2 * AJ;
triple AW = s2 * AK;
triple AX = s2 * AL;

triple BA = r * BZ;
triple BB = s3 * BA;
triple BC = s3 * BB;
triple BD = s4 * BA;
triple BE = s4 * BB;
triple BF = s4 * BC;
triple BG = s4 * BD;
triple BH = s4 * BE;
triple BI = s4 * BF;
triple BJ = s4 * BG;
triple BK = s4 * BH;
triple BL = s4 * BI;
triple BM = s2 * BA;
triple BN = s2 * BB;
triple BO = s2 * BC;
triple BP = s2 * BD;
triple BQ = s2 * BE;
triple BR = s2 * BF;
triple BS = s2 * BG;
triple BT = s2 * BH;
triple BU = s2 * BI;
triple BV = s2 * BJ;
triple BW = s2 * BK;
triple BX = s2 * BL;

transform3 t = rotate(-20, AD);

face faceZ1 = constructFace(AA, AA + BA, conf);
face faceX1 = constructFace(AB, AB + BB, conf);
face faceY1 = constructFace(AC, AC + BC, conf);
face faceZ2 = constructFace(AD, AD + BD, conf);
face faceY2 = constructFace(AE, AE + BE, conf);
face faceXX1 = constructFace(AF, AF + BF, conf);
face faceZ3 = constructFace(AG, AG + BG, conf);
face faceXX2 = constructFace(AH, AH + BH, conf);
face faceYY1 = constructFace(AI, AI + BI, conf);
face faceZ4 = constructFace(AJ, AJ + BJ, conf);
face faceYY2 = constructFace(AK, AK + BK, conf);
face faceX2 = constructFace(AL, AL + BL, conf);
face faceZZ1 = constructFace(AM, AM + BM, conf);
face faceX3 = constructFace(AN, AN + BN, conf);
face faceYY3 = constructFace(AO, AO + BO, conf);
face faceZZ2 = constructFace(AP, AP + BP, conf);
face faceYY4 = constructFace(AQ, AQ + BQ, conf);
face faceXX3 = constructFace(AR, AR + BR, conf);
face faceZZ3 = constructFace(AS, AS + BS, conf);
face faceXX4 = constructFace(AT, AT + BT, conf);
face faceY3 = constructFace(AU, AU + BU, conf);
face faceZZ4 = constructFace(AV, AV + BV, conf);
face faceY4 = constructFace(AW, AW + BW, conf);
face faceX4 = constructFace(AX, AX + BX, conf);

real d = length(faceZ1.P[0] - faceZ1.R[0]) / 5;
glueFaces(faceX1, faceY1, faceZ1, d);
glueFaces(faceXX1, faceY2, faceZ2, d);
glueFaces(faceXX2, faceYY1, faceZ3, d);
glueFaces(faceX2, faceYY2, faceZ4, d);
glueFaces(faceX3, faceYY3, faceZZ1, d);
glueFaces(faceXX3, faceYY4, faceZZ2, d);
glueFaces(faceXX4, faceY3, faceZZ3, d);
glueFaces(faceX4, faceY4, faceZZ4, d);
glueFaces(faceY2, faceZ1, faceZ2, d);
glueFaces(faceY1, faceY2, faceZ1, d);
glueFaces(faceXX2, faceZ2, faceZ3, d);
glueFaces(faceXX1, faceXX2, faceZ2, d);
glueFaces(faceYY2, faceZ3, faceZ4, d);
glueFaces(faceYY1, faceYY2, faceZ3, d);
glueFaces(faceX1, faceZ4, faceZ1, d);
glueFaces(faceX1, faceX2, faceZ4, d);
glueFaces(faceYY4, faceZZ1, faceZZ2, d);
glueFaces(faceYY3, faceYY4, faceZZ1, d);
glueFaces(faceXX4, faceZZ2, faceZZ3, d);
glueFaces(faceXX3, faceXX4, faceZZ2, d);
glueFaces(faceY4, faceZZ3, faceZZ4, d);
glueFaces(faceY3, faceY4, faceZZ3, d);
glueFaces(faceX3, faceZZ4, faceZZ1, d);
glueFaces(faceX3, faceX4, faceZZ4, d);
glueFaces(faceX1, faceX4, faceY1, d);
glueFaces(faceX4, faceY1, faceY4, d);
glueFaces(faceY2, faceY3, faceXX1, d);
glueFaces(faceY3, faceXX1, faceXX4, d);
glueFaces(faceXX2, faceXX3, faceYY1, d);
glueFaces(faceXX3, faceYY1, faceYY4, d);
glueFaces(faceYY2, faceYY3, faceX2, d);
glueFaces(faceYY3, faceX2, faceX3, d);

drawFace(faceZ1, RGB(121, 45, 75), t, 5); // Bordo
drawFace(faceX1, RGB(164, 174, 173)); // Grey
drawFace(faceY1, RGB(255, 228, 1)); // Yellow
drawFace(faceZ2, RGB(255, 106, 3), t); // Orange
drawFace(faceY2, RGB(235, 175, 1), t, 1); // Signal Yellow
drawFace(faceXX1, RGB(1, 156, 220), t, 10); // Light Blue
drawFace(faceZ3, RGB(196, 0, 66), t, 8); // Red
drawFace(faceXX2, RGB(55, 58, 191), t, 3); // Brilliant Blue
drawFace(faceYY1, RGB(85, 2, 156)); // Purple
drawFace(faceZ4, RGB(206, 115, 24)); // Coffee
drawFace(faceYY2, RGB(177, 149, 198)); // Lilac
drawFace(faceX2, RGB(77, 37, 1)); // Chocolate
drawFace(faceZZ1, RGB(0, 147, 102)); // Green
drawFace(faceX3, RGB(255, 255, 255)); // White
drawFace(faceYY3, RGB(246, 166, 191)); // Pink
drawFace(faceZZ2, RGB(0, 173, 169)); // Turquase
drawFace(faceYY4, RGB(124, 125, 189)); // Plum
drawFace(faceXX3, RGB(0, 87, 141)); // Signal Blue
drawFace(faceZZ3, RGB(1, 88, 54)); // Grass Green
drawFace(faceXX4, RGB(14, 4, 126)); // Dark Blue
drawFace(faceY3, RGB(230, 252, 129)); // Tea Yellow
drawFace(faceZZ4, RGB(90, 173, 65)); // Mint Green
drawFace(faceY4, RGB(255, 250, 200)); // Pale Yellow
drawFace(faceX4, RGB(233, 211, 174)); // Beige

vertex4 vertexX = constructVertex4(faceX2, faceX3, faceX4, faceX1);
vertex4 vertexXX = constructVertex4(faceXX1, faceXX4, faceXX3, faceXX2);
vertex4 vertexY = constructVertex4(faceY2, faceY1, faceY4, faceY3);
vertex4 vertexYY = constructVertex4(faceYY1, faceYY4, faceYY3, faceYY2);
vertex4 vertexZ = constructVertex4(faceZ1, faceZ2, faceZ3, faceZ4);
vertex4 vertexZZ = constructVertex4(faceZZ1, faceZZ2, faceZZ3, faceZZ4);

drawVertex4(vertexX, RGB(1, 156, 220)); // Light Blue
drawVertex4(vertexXX, RGB(233, 211, 174)); // Beige
drawVertex4(vertexY, RGB(246, 166, 191)); // Pink
drawVertex4(vertexYY, RGB(255, 228, 1)); // Yellow
drawVertex4(vertexZ, RGB(0, 147, 102), t, 1); // Green
drawVertex4(vertexZZ, RGB(196, 0, 66)); // Red

