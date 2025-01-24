//
include "sun.asyhdr";

setView(50, -110, -145);

real r = 1 / sqrt(3);
real v = (sqrt(5) - 1);
bool[] confRhomb = new bool[] {true, false, true, true, false, true, false, true, true, false};
bool[] confTrapez = new bool[] {false, true, false, true, true, false, true, true, false, true};
transform3 s = rotate(60, X + Y + Z);
transform3 t = rotate(-20, -Y+Z);

face faceXY = constructFace(r*(X+Y), r*(X+Y+Z), confRhomb);
face faceXXYY = constructFace(r*(s*(-X-Y)), r*(s*(-X-Y+Z)), confRhomb);
face faceXYY = constructFace(r*(X-Y), 2*r*(X-2*Y+Z)/3, confTrapez);
face faceXXY = constructFace(r*(-X+Y), 2*r*(-2*X+Y+Z)/3, confTrapez);
face faceXZ = constructFace(r*(X+Z), r*(X+Y+Z), confRhomb);
face faceXXZZ = constructFace(r*(s*(-X-Z)), r*(s*(-X+Y-Z)), confRhomb);
face faceXZZ = constructFace(r*(X-Z), 2*r*(X+Y-2*Z)/3, confTrapez);
face faceXXZ = constructFace(r*(-X+Z), 2*r*(-2*X+Y+Z)/3, confTrapez);
face faceYZ = constructFace(r*(Y+Z), r*(X+Y+Z), confRhomb);
face faceYYZZ = constructFace(r*(s*(-Y-Z)), r*(s*(X-Y-Z)), confRhomb);
face faceYZZ = constructFace(r*(Y-Z), 2*r*(X+Y-2*Z)/3, confTrapez);
face faceYYZ = constructFace(r*(-Y+Z), 2*r*(X-2*Y+Z)/3, confTrapez);

real d = 2 * glueFaces(faceXY, faceXZ, faceYZ);
glueFaces(faceXY, faceXZZ, faceYZZ, d);
glueFaces(faceXYY, faceXZ, faceYYZ, d);
glueFaces(faceXXY, faceXXZ, faceYZ, d);
glueFaces(faceXXY, faceXXZ, faceXXZZ, d);
glueFaces(faceXZZ, faceYZZ, faceYYZZ, d);
glueFaces(faceXYY, faceXXYY, faceYYZ, d);
glueFaces(faceXXYY, faceXXZZ, faceYYZZ, d);

drawFace(faceXZ, Blue, t, 4);
drawFace(faceYZ, Orange);
drawFace(faceXXZ, LightBlue, t, 5);
drawFace(faceYYZ, Red, t);
drawFace(faceXY, Lime);
drawFace(faceXXY, Yellow);
drawFace(faceXXYY, Green, t, 1);
drawFace(faceXYY, White, t, 0);
drawFace(faceXZZ, LightGreen);
drawFace(faceYZZ, Pink);
drawFace(faceXXZZ, Violet);
drawFace(faceYYZZ, Grey);

vertex4 vertexX = constructVertex4(faceXY, faceXZ, faceXYY, faceXZZ);
vertex4 vertexY = constructVertex4(faceYZ, faceXY, faceYZZ, faceXXY);
vertex4 vertexZ = constructVertex4(faceXZ, faceYZ, faceXXZ, faceYYZ);
vertex4 vertexXX = constructVertex4(faceXXZZ, faceXXYY, faceYYZ, faceXXZ);
vertex4 vertexYY = constructVertex4(faceXXYY, faceYYZZ, faceXZZ, faceXYY);
vertex4 vertexZZ = constructVertex4(faceYYZZ, faceXXZZ, faceXXY, faceYZZ);

drawVertex4(vertexX, Red);
drawVertex4(vertexY, LightGreen);
drawVertex4(vertexZ, Yellow, t, 3);
drawVertex4(vertexXX, White, t, 2);
drawVertex4(vertexYY, Pink);
drawVertex4(vertexZZ, LightBlue);

