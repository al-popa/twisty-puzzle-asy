//
include "sun.asyhdr";

setView(85, -25, 90);

real dual(real x)
{
	return sqrt(1 - x * x);
}

real p = 1 + sqrt(2);
real a = 0.91; // Measured
real r = dual(a);

transform3 s2 = rotate(180, X);
transform3 s3 = rotate(120, X + Y + Z);
transform3 s4 = rotate(90, Z);

triple AZ = unit(X + Y + p * Z);
triple AY = unit(cross(AZ, X + Y + Z));
triple BZ = cross(AY, AZ);

bool[] conf = new bool[] {true, false, true, true, false, true, true, false, true, true, false};

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

transform3 t = rotate(-20, AB);

face faceZXY = constructFace(AA, AA + BA, conf);
face faceXYZ = constructFace(AB, AB + BB, conf);
face faceYXZ = constructFace(AC, AC + BC, conf);
face faceZXXY = constructFace(AD, AD + BD, conf);
face faceYXXZ = constructFace(AE, AE + BE, conf);
face faceXXYZ = constructFace(AF, AF + BF, conf);
face faceZXXYY = constructFace(AG, AG + BG, conf);
face faceXXYYZ = constructFace(AH, AH + BH, conf);
face faceYYXXZ = constructFace(AI, AI + BI, conf);
face faceZXYY = constructFace(AJ, AJ + BJ, conf);
face faceYYXZ = constructFace(AK, AK + BK, conf);
face faceXYYZ = constructFace(AL, AL + BL, conf);
face faceZZXYY = constructFace(AM, AM + BM, conf);
face faceXYYZZ = constructFace(AN, AN + BN, conf);
face faceYYXZZ = constructFace(AO, AO + BO, conf);
face faceZZXXYY = constructFace(AP, AP + BP, conf);
face faceYYXXZZ = constructFace(AQ, AQ + BQ, conf);
face faceXXYYZZ = constructFace(AR, AR + BR, conf);
face faceZZXXY = constructFace(AS, AS + BS, conf);
face faceXXYZZ = constructFace(AT, AT + BT, conf);
face faceYXXZZ = constructFace(AU, AU + BU, conf);
face faceZZXY = constructFace(AV, AV + BV, conf);
face faceYXZZ = constructFace(AW, AW + BW, conf);
face faceXYZZ = constructFace(AX, AX + BX, conf);

real d = glueFaces(faceXYZ, faceYXZ, faceZXY);
glueFaces(faceXXYZ, faceYXXZ, faceZXXY, d);
glueFaces(faceXYYZ, faceYYXZ, faceZXYY, d);
glueFaces(faceXYZZ, faceYXZZ, faceZZXY, d);
glueFaces(faceXXYYZ, faceYYXXZ, faceZXXYY, d);
glueFaces(faceXXYZZ, faceYXXZZ, faceZZXXY, d);
glueFaces(faceXYYZZ, faceYYXZZ, faceZZXYY, d);
glueFaces(faceXXYYZZ, faceYYXXZZ, faceZZXXYY, d);
glueFaces(faceXYZ, faceXYYZ, d);
glueFaces(faceXYZ, faceXYZZ, d);
glueFaces(faceXYZZ, faceXYYZZ, d);
glueFaces(faceXYYZ, faceXYYZZ, d);
glueFaces(faceYXZ, faceYXZZ, d);
glueFaces(faceYXZ, faceYXXZ, d);
glueFaces(faceYXZZ, faceYXXZZ, d);
glueFaces(faceYXXZ, faceYXXZZ, d);
glueFaces(faceZXY, faceZXYY, d);
glueFaces(faceZXY, faceZXXY, d);
glueFaces(faceZXXY, faceZXXYY, d);
glueFaces(faceZXYY, faceZXXYY, d);
glueFaces(faceXXYZ, faceXXYZZ, d);
glueFaces(faceXXYZ, faceXXYYZ, d);
glueFaces(faceXXYYZ, faceXXYYZZ, d);
glueFaces(faceXXYZZ, faceXXYYZZ, d);
glueFaces(faceYYXXZ, faceYYXXZZ, d);
glueFaces(faceYYXZ, faceYYXXZ, d);
glueFaces(faceYYXZ, faceYYXZZ, d);
glueFaces(faceYYXZZ, faceYYXXZZ, d);
glueFaces(faceZZXY, faceZZXXY, d);
glueFaces(faceZZXY, faceZZXYY, d);
glueFaces(faceZZXXY, faceZZXXYY, d);
glueFaces(faceZZXYY, faceZZXXYY, d);

drawFace(faceZXY, RGB(121, 45, 75), t, 10); // Bordo
drawFace(faceXYZ, RGB(164, 174, 173), t); // Grey
drawFace(faceYXZ, RGB(255, 228, 1), t, 1); // Yellow
drawFace(faceZXXY, RGB(255, 106, 3)); // Orange
drawFace(faceYXXZ, RGB(235, 175, 1)); // Signal Yellow
drawFace(faceXXYZ, RGB(1, 156, 220)); // Light Blue
drawFace(faceZXXYY, RGB(196, 0, 66)); // Red
drawFace(faceXXYYZ, RGB(55, 58, 191)); // Brilliant Blue
drawFace(faceYYXXZ, RGB(85, 2, 156)); // Purple
drawFace(faceZXYY, RGB(206, 115, 24)); // Coffee
drawFace(faceYYXZ, RGB(177, 149, 198)); // Lilac
drawFace(faceXYYZ, RGB(77, 37, 1), t, 7); // Chocolate
drawFace(faceZZXYY, RGB(0, 147, 102)); // Green
drawFace(faceXYYZZ, RGB(255, 255, 255)); // White
drawFace(faceYYXZZ, RGB(246, 166, 191)); // Pink
drawFace(faceZZXXYY, RGB(0, 173, 169)); // Turquase
drawFace(faceYYXXZZ, RGB(124, 125, 189)); // Plum
drawFace(faceXXYYZZ, RGB(0, 87, 141)); // Signal Blue
drawFace(faceZZXXY, RGB(1, 88, 54)); // Grass Green
drawFace(faceXXYZZ, RGB(14, 4, 126)); // Dark Blue
drawFace(faceYXXZZ, RGB(230, 252, 129)); // Tea Yellow
drawFace(faceZZXY, RGB(90, 173, 65)); // Mint Green
drawFace(faceYXZZ, RGB(255, 250, 200)); // Pale Yellow
drawFace(faceXYZZ, RGB(233, 211, 174), t, 4); // Beige

vertex4 vertexX = constructVertex4(faceXYZ, faceXYYZ, faceXYYZZ, faceXYZZ);
vertex4 vertexXX = constructVertex4(faceXXYZ, faceXXYZZ, faceXXYYZZ, faceXXYYZ);
vertex4 vertexY = constructVertex4(faceYXZ, faceYXZZ, faceYXXZZ, faceYXXZ);
vertex4 vertexYY = constructVertex4(faceYYXZ, faceYYXXZ, faceYYXXZZ, faceYYXZZ);
vertex4 vertexZ = constructVertex4(faceZXY, faceZXXY, faceZXXYY, faceZXYY);
vertex4 vertexZZ = constructVertex4(faceZZXY, faceZZXYY, faceZZXXYY, faceZZXXY);
vertex4 vertexXY = constructVertex4(faceXYZ, faceXYZZ, faceYXZZ, faceYXZ);
vertex4 vertexXXY = constructVertex4(faceYXXZ, faceYXXZZ, faceXXYZZ, faceXXYZ);
vertex4 vertexXYY = constructVertex4(faceYYXZ, faceYYXZZ, faceXYYZZ, faceXYYZ);
vertex4 vertexXXYY = constructVertex4(faceXXYYZ, faceXXYYZZ, faceYYXXZZ, faceYYXXZ);
vertex4 vertexXZ = constructVertex4(faceXYZ, faceZXY, faceZXYY, faceXYYZ);
vertex4 vertexXXZ = constructVertex4(faceXXYZ, faceXXYYZ, faceZXXYY, faceZXXY);
vertex4 vertexXZZ = constructVertex4(faceXYZZ, faceXYYZZ, faceZZXYY, faceZZXY);
vertex4 vertexXXZZ = constructVertex4(faceXXYYZZ, faceXXYZZ, faceZZXXY, faceZZXXYY);
vertex4 vertexYZ = constructVertex4(faceYXZ, faceYXXZ, faceZXXY, faceZXY);
vertex4 vertexYYZ = constructVertex4(faceYYXXZ, faceYYXZ, faceZXYY, faceZXXYY);
vertex4 vertexYZZ = constructVertex4(faceYXXZZ, faceYXZZ, faceZZXY, faceZZXXY);
vertex4 vertexYYZZ = constructVertex4(faceYYXZZ, faceYYXXZZ, faceZZXXYY, faceZZXYY);

drawVertex4(vertexX, RGB(1, 156, 220), t, 0); // Light Blue
drawVertex4(vertexXX, RGB(233, 211, 174)); // Beige
drawVertex4(vertexY, RGB(246, 166, 191)); // Pink
drawVertex4(vertexYY, RGB(255, 228, 1)); // Yellow
drawVertex4(vertexZ, RGB(0, 147, 102)); // Green
drawVertex4(vertexZZ, RGB(196, 0, 66)); // Red
drawVertex4(vertexXY, RGB(0, 87, 141), t, 0); // Signal Blue
drawVertex4(vertexXXY, RGB(77, 37, 1)); // Chocolate
drawVertex4(vertexXYY, RGB(235, 175, 1)); // Signal Yellow
drawVertex4(vertexXXYY, RGB(164, 174, 173)); // Grey
drawVertex4(vertexXZ, RGB(14, 4, 126), t, 0); // Dark Blue
drawVertex4(vertexXXZ, RGB(255, 255, 255)); // White
drawVertex4(vertexXZZ, RGB(55, 58, 191)); // Brilliant Blue
drawVertex4(vertexXXZZ, RGB(121, 45, 75)); // Bordo
drawVertex4(vertexYZ, RGB(0, 173, 169)); // Turquase
drawVertex4(vertexYYZ, RGB(255, 250, 200)); // Pale Yellow
drawVertex4(vertexYZZ, RGB(177, 149, 198)); // Lilac
drawVertex4(vertexYYZZ, RGB(255, 106, 3)); // Orange

