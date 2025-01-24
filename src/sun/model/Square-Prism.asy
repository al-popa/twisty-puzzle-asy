//
include "sun.asyhdr";

setView(40, 40, 65);

real s = 1 / sqrt(3);
bool[] conf = new bool[] {false, true, true, false, true, true};

transform3 t = rotate(-20, X);

face faceRed = constructFace(s*X, s*(X+Y), conf);
face faceGreen = constructFace(s*Y, s*(Y-X), conf);
face faceYellow = constructFace(-s*X, s*(-X-Y), conf);
face faceBlue = constructFace(-s*Y, s*(-Y+X), conf);

real d = glueFaces(faceRed, faceGreen);
glueFaces(faceGreen, faceYellow);
glueFaces(faceYellow, faceBlue);
glueFaces(faceBlue, faceRed);

drawFace(faceRed, Red, t);
drawFace(faceGreen, Green, t, 3);
drawFace(faceYellow, Yellow);
drawFace(faceBlue, Blue, t, 0);

vertex4 vertexUp = constructVertex4(faceRed, faceGreen, faceYellow, faceBlue);
vertex4 vertexDown = constructVertex4(faceYellow, faceGreen, faceRed, faceBlue);

drawVertex4(vertexUp, Tan, t, 0);
drawVertex4(vertexDown, Tan, t, 2);

