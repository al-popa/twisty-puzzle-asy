//
include "sun.asyhdr";

setView(135, -30, 0);

real phi = 65.5301994792978; // Measured

transform3 s = rotate(90, Z);

triple A = X * Sin(phi) + Z * Cos(phi);
triple B = (X + Y) * Sin(phi) / sqrt(2) - Z * Cos(phi);
triple C = s * A;
triple D = s * B;
triple E = s * C;
triple F = s * D;
triple G = s * E;
triple H = s * F;

triple findEdgeByFaces(triple face1, triple face2)
{
	real angle = aCos(dot(unit(face1), unit(face2))) / 2;
	return unit(face1 + face2) / Cos(angle);
}

triple ZA = findEdgeByFaces(Z, A);
triple ZB = findEdgeByFaces(-Z, B);
triple ZC = findEdgeByFaces(Z, C);
triple ZD = findEdgeByFaces(-Z, D);
triple ZE = findEdgeByFaces(Z, E);
triple ZF = findEdgeByFaces(-Z, F);
triple ZG = findEdgeByFaces(Z, G);
triple ZH = findEdgeByFaces(-Z, H);

bool[] conf1 = new bool[] {false, true, false, true, false, true, false, true};
bool[] conf2 = new bool[] {false, true, true, false, true, false, true, true};

face fz = constructFace(Z, ZA, conf1);
face fzz = constructFace(-Z, ZB, conf1);
face fa = constructFace(A, ZA, conf2);
face fb = constructFace(B, ZB, conf2);
face fc = constructFace(C, ZC, conf2);
face fd = constructFace(D, ZD, conf2);
face fe = constructFace(E, ZE, conf2);
face ff = constructFace(F, ZF, conf2);
face fg = constructFace(G, ZG, conf2);
face fh = constructFace(H, ZH, conf2);

drawFace(fz, White);
drawFace(fzz, Grey);
drawFace(fa, Red);
drawFace(fb, Yellow);
drawFace(fc, Green);
drawFace(fd, Violet);
drawFace(fe, Orange);
drawFace(ff, Tan);
drawFace(fg, Blue);
drawFace(fh, Pink);

