//
include "sun.asyhdr";

setView(-60, 90, 15);

real r = 1 / sqrt(3);

triple A = r * (X+Y+Z);
triple B = r * (X-Y-Z);
triple C = r * (-X+Y-Z);
triple D = r * (-X-Y+Z);

transform3 t = rotate(-20, A);

bool[] conf = new bool[] {true, false, true, false, true, false};

face faceA = constructFace(A/3, -B, conf);
face faceB = constructFace(B/3, -C, conf);
face faceC = constructFace(C/3, -D, conf);
face faceD = constructFace(D/3, -A, conf);

real d = glueFaces(faceA, faceB, faceC);
glueFaces(faceA, faceB, faceD, d);
glueFaces(faceA, faceC, faceD, d);
glueFaces(faceB, faceC, faceD, d);

drawFace(faceA, Red, t);
drawFace(faceB, Yellow, t, 5);
drawFace(faceC, Green, t, 5);
drawFace(faceD, Blue, t, 3);

