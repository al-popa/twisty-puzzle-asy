//
include "sun.asyhdr";

setView(-165, -80, -110);

real dual(real x)
{
	return sqrt(1 - x * x);
}

real s = 1 / Cos(40);

real p = 1.27272614599331; // Measured
bool[] conf = new bool[] {false, true, true, false, true, true, false, true, true};
transform3 t = rotate(-20, X + Y + Z);

face faceRed = constructFace(p * (X + Y + Z) / 3, p * (X + Y) / 2, conf);
face faceYellow = constructFace(p * (X + Y - Z) / 3, p * (X + Y) / 2, conf);
face facePink = constructFace(p * (X - Y - Z) / 3, p * (X - Y) / 2, conf);
face faceBlue = constructFace(p * (X - Y + Z) / 3, p * (X - Y) / 2, conf);
face faceViolet = constructFace(p * (-X + Y + Z) / 3, p * (-X + Y) / 2, conf);
face faceGreen = constructFace(p * (-X + Y - Z) / 3, p * (-X + Y) / 2, conf);
face faceGrey = constructFace(p * (-X - Y + Z) / 3, p * (-X - Y) / 2, conf);
face faceOrange = constructFace(p * (-X - Y - Z) / 3, p * (-X - Y) / 2, conf);

real d = glueFaces(faceRed, faceYellow);
glueFaces(faceRed, faceBlue, d);
glueFaces(faceRed, faceViolet, d);
glueFaces(faceYellow, facePink, d);
glueFaces(faceYellow, faceGreen, d);
glueFaces(facePink, faceBlue, d);
glueFaces(facePink, faceOrange, d);
glueFaces(faceBlue, faceGrey, d);
glueFaces(faceViolet, faceGreen, d);
glueFaces(faceViolet, faceGrey, d);
glueFaces(faceGreen, faceOrange, d);
glueFaces(faceGrey, faceOrange, d);

drawFace(faceRed, Red, t);
drawFace(faceYellow, Yellow, t, 0);
drawFace(facePink, Pink);
drawFace(faceBlue, Blue, t, 3);
drawFace(faceViolet, Violet, t, 6);
drawFace(faceGreen, Green);
drawFace(faceGrey, Grey);
drawFace(faceOrange, Orange);

vertex4 vertexX = constructVertex4(faceRed, faceBlue, facePink, faceYellow);
vertex4 vertexY = constructVertex4(faceRed, faceYellow, faceGreen, faceViolet);
vertex4 vertexZ = constructVertex4(faceRed, faceViolet, faceGrey, faceBlue);
vertex4 vertexXX = constructVertex4(faceOrange, faceGrey, faceViolet, faceGreen);
vertex4 vertexYY = constructVertex4(faceOrange, facePink, faceBlue, faceGrey);
vertex4 vertexZZ = constructVertex4(faceOrange, faceGreen, faceYellow, facePink);

drawVertex4(vertexX, Tan, t, 0);
drawVertex4(vertexY, Tan, t, 0);
drawVertex4(vertexZ, Tan, t, 0);
drawVertex4(vertexXX, Tan);
drawVertex4(vertexYY, Tan);
drawVertex4(vertexZZ, Tan);

