//
include "sun.asyhdr";

setView(135, -30, 0);

real r = 1 / sqrt(3);
bool[] square = new bool[] {true, false, true, false, true, false, true, false};
transform3 t = rotate(-20, Z);

face faceZ = constructFace(r*Z, r*(X+Y+Z), square);
face faceZZ = constructFace(-r*Z, r*(X+Y-Z), square);
face faceX = constructFace(r*X, r*(X+Y+Z), square);
face faceXX = constructFace(-r*X, r*(-X+Y+Z), square);
face faceY = constructFace(r*Y, r*(X+Y+Z), square);
face faceYY = constructFace(-r*Y, r*(X-Y+Z), square);

real d = glueFaces(faceZ, faceX, faceY);
glueFaces(faceZ, faceX, faceYY, d);
glueFaces(faceZ, faceXX, faceY, d);
glueFaces(faceZ, faceXX, faceYY, d);
glueFaces(faceZZ, faceX, faceY, d);
glueFaces(faceZZ, faceX, faceYY, d);
glueFaces(faceZZ, faceXX, faceY, d);
glueFaces(faceZZ, faceXX, faceYY, d);

drawFace(faceZ, White, t);
drawFace(faceZZ, Yellow);
drawFace(faceX, Red, t, 1);
drawFace(faceXX, Orange, t, 7);
drawFace(faceY, Blue, t, 7);
drawFace(faceYY, Green, t, 1);

