//
include "sun.asyhdr";

setView(-10, 110, 10);

real r = 1 / sqrt(3);
bool[] conf = new bool[] {true, false, true, true, false, true, false, true, true, false};
transform3 t = rotate(-20, -Y-Z);

face faceXY = constructFace(r*(X+Y), r*(X+Y+Z), conf);
face faceXXYY = constructFace(r*(-X-Y), r*(-X-Y+Z), conf);
face faceXYY = constructFace(r*(X-Y), r*(X-Y+Z), conf);
face faceXXY = constructFace(r*(-X+Y), r*(-X+Y+Z), conf);
face faceXZ = constructFace(r*(X+Z), r*(X+Y+Z), conf);
face faceXXZZ = constructFace(r*(-X-Z), r*(-X+Y-Z), conf);
face faceXZZ = constructFace(r*(X-Z), r*(X+Y-Z), conf);
face faceXXZ = constructFace(r*(-X+Z), r*(-X+Y+Z), conf);
face faceYZ = constructFace(r*(Y+Z), r*(X+Y+Z), conf);
face faceYYZZ = constructFace(r*(-Y-Z), r*(X-Y-Z), conf);
face faceYZZ = constructFace(r*(Y-Z), r*(X+Y-Z), conf);
face faceYYZ = constructFace(r*(-Y+Z), r*(X-Y+Z), conf);

real d = glueFaces(faceXY, faceXZ, faceYZ);
glueFaces(faceXY, faceXZZ, faceYZZ, d);
glueFaces(faceXYY, faceXZ, faceYYZ, d);
glueFaces(faceXXY, faceXXZ, faceYZ, d);
glueFaces(faceXYY, faceXZZ, faceYYZZ, d);
glueFaces(faceXXY, faceXXZZ, faceYZZ, d);
glueFaces(faceXXYY, faceXXZ, faceYYZ, d);
glueFaces(faceXXYY, faceXXZZ, faceYYZZ, d);

drawFace(faceXZ, Blue);
drawFace(faceYZ, Grey);
drawFace(faceXXZ, Green);
drawFace(faceYYZ, Yellow);
drawFace(faceXY, Pink);
drawFace(faceXXY, Orange);
drawFace(faceXXYY, Violet, t, 6);
drawFace(faceXYY, Red, t, 4);
drawFace(faceXZZ, LightGreen, t, 6);
drawFace(faceYZZ, Lime);
drawFace(faceXXZZ, LightBlue, t, 4);
drawFace(faceYYZZ, White, t);

vertex4 vertexX = constructVertex4(faceXY, faceXZ, faceXYY, faceXZZ);
vertex4 vertexY = constructVertex4(faceXY, faceYZZ, faceXXY, faceYZ);
vertex4 vertexZ = constructVertex4(faceXZ, faceYZ, faceXXZ, faceYYZ);
vertex4 vertexXX = constructVertex4(faceXXY, faceXXZZ, faceXXYY, faceXXZ);
vertex4 vertexYY = constructVertex4(faceXYY, faceYYZ, faceXXYY, faceYYZZ);
vertex4 vertexZZ = constructVertex4(faceXZZ, faceYYZZ, faceXXZZ, faceYZZ);

drawVertex4(vertexX, White);
drawVertex4(vertexY, LightGreen);
drawVertex4(vertexZ, Pink);
drawVertex4(vertexXX, Yellow);
drawVertex4(vertexYY, LightBlue, t, 3);
drawVertex4(vertexZZ, Orange, t, 1);

