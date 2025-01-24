//
include "sun.asyhdr";

setView(30, 100, -150);

real p = (sqrt(5) + 1)/2;
real c = 1 / sqrt(2 + p);
real s = p * c;
real w = sqrt((4 * p + 3) / 15);
real r = w * (p - 1);
real h = 0.083;
bool[] confPentagon = new bool[] {false, true, false, true, false, true, false, true, false, true};
bool[] confTrapez = new bool[] {false, true, false, true, true, false, true, true, false, true};

transform3 f = rotate(72, Z);

triple A = 2 * c * s * X + (s * s - c * c) * Z;
triple B = f * A;
triple C = f * B;
triple D = f * C;
triple E = f * D;
triple F = 2 * c * s * X + (c * c - s * s) * Z;
triple G = f * F;
triple H = f * G;
triple I = f * H;
triple J = f * I;
triple NA = (c * c - s * s) * X + 2 * c * s * Z;
triple NB = f * NA;
triple NC = f * NB;
triple ND = f * NC;
triple NE = f * ND;
triple NF = (c * c - s * s) * X - 2 * c * s * Z;
triple NG = f * NF;
triple NH = f * NG;
triple NI = f * NH;
triple NJ = f * NI;

transform3 t = rotate(-20, -h * Z, w * H - h * Z);

face faceZ = constructFace(w * Z + h * Z, w * Z + h * Z + r * X, confPentagon, h * Z);
face face1 = constructFace(w * A + h * Z, w * A + h * Z + r * NA, confTrapez, h * Z);
face face2 = constructFace(w * B + h * Z, w * B + h * Z + r * NB, confTrapez, h * Z);
face face3 = constructFace(w * C + h * Z, w * C + h * Z + r * NC, confTrapez, h * Z);
face face4 = constructFace(w * D + h * Z, w * D + h * Z + r * ND, confTrapez, h * Z);
face face5 = constructFace(w * E + h * Z, w * E + h * Z + r * NE, confTrapez, h * Z);
face faceZZ = constructFace(-w * Z - h * Z, -w * Z - h * Z + r * X, confPentagon, -h * Z);
face face11 = constructFace(w * F - h * Z, w * F - h * Z + r * NF, confTrapez, -h * Z);
face face22 = constructFace(w * G - h * Z, w * G - h * Z + r * NG, confTrapez, -h * Z);
face face33 = constructFace(w * H - h * Z, w * H - h * Z + r * NH, confTrapez, -h * Z);
face face44 = constructFace(w * I - h * Z, w * I - h * Z + r * NI, confTrapez, -h * Z);
face face55 = constructFace(w * J - h * Z, w * J - h * Z + r * NJ, confTrapez, -h * Z);

real d = glueFaces(faceZ, face1, face2);
glueFaces(faceZ, face2, face3, d);
glueFaces(faceZ, face3, face4, d);
glueFaces(faceZ, face4, face5, d);
glueFaces(faceZ, face5, face1, d);
glueFaces(faceZZ, face11, face22, d);
glueFaces(faceZZ, face22, face33, d);
glueFaces(faceZZ, face33, face44, d);
glueFaces(faceZZ, face44, face55, d);
glueFaces(faceZZ, face55, face11, d);
glueFaces(face1, face11, d);
glueFaces(face2, face22, d);
glueFaces(face3, face33, d);
glueFaces(face4, face44, d);
glueFaces(face5, face55, d);

drawFace(faceZ, White);
drawFace(face1, Pink);
drawFace(face2, LightGreen);
drawFace(face3, Orange, t, 5);
drawFace(face4, LightBlue);
drawFace(face5, Lime);
drawFace(faceZZ, Yellow, t, 6);
drawFace(face11, Red);
drawFace(face22, Blue, t, 2);
drawFace(face33, Grey, t);
drawFace(face44, Violet, t, 8);
drawFace(face55, Green);

vertex4 vertex11 = constructVertex4(face2, face1, face11, face22);
vertex4 vertex22 = constructVertex4(face3, face2, face22, face33);
vertex4 vertex33 = constructVertex4(face4, face3, face33, face44);
vertex4 vertex44 = constructVertex4(face5, face4, face44, face55);
vertex4 vertex55 = constructVertex4(face1, face5, face55, face11);

drawVertex4(vertex11, Lime);
drawVertex4(vertex22, Pink, t, 3);
drawVertex4(vertex33, LightGreen, t, 2);
drawVertex4(vertex44, Orange);
drawVertex4(vertex55, LightBlue);

