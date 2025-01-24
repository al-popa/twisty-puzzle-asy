//
include "sun.asyhdr";

void drawEdgeFlipped(face f, int idx, pen color, transform3 t = identity4, int tridx = -1)
{
	// TODO Implement transform
	transform3 tr = rotate(180, f.V[idx - 1] + f.V[idx + 1]);
	stick(f.E[idx - 1]--f.E[idx]--(tr * f.R[idx - 1]), color);
	stick((tr * f.R[idx - 1])--(tr * f.P[idx - 1])--(tr * f.P[idx]), color);
	stick((tr * f.R[idx - 2])--(tr * f.P[idx - 1])--(tr * f.R[idx - 1])--f.E[idx], color);
	stick((tr * f.R[idx - 1])--(tr * f.P[idx])--(tr * f.R[idx])--f.E[idx - 1], color);
	stick((tr * f.E[idx - 2])--(tr * f.R[idx - 2])--f.E[idx]--f.V[idx + 1], color);
	stick((tr * f.E[idx + 1])--(tr * f.R[idx])--f.E[idx - 1]--f.V[idx - 1], color);
//	draw(f.core--(tr * f.R[idx - 2]), Red, Arrow3);
//	draw(f.core--(tr * f.R[idx - 1]), Blue, Arrow3);
//	draw(f.core--(tr * f.P[idx - 1]), Green, Arrow3);
}

bool[] confSquare = new bool[] {true, false, true, false, true, false, true, false};
bool[] confTriangle = new bool[] {true, false, true, true, false, true, true, false};

transform3 s = rotate(45, Z);
transform3 t = rotate(-0, Z);

face faceGreen = constructFace(X, X+Y+Z, confSquare);
face faceOrange = constructFace(Y, X+Y+Z, confSquare);
face faceYellow = constructFace(s * (-X), s * (-X+Y+Z), confSquare);
face faceWhite = constructFace(Z, X+Y+Z, confTriangle);
face faceGrey = constructFace(-Z, X+Y-Z, confTriangle);

drawFace(faceGreen, Green, t, 1);
drawFace(faceOrange, Orange, t, 7);
drawFace(faceYellow, Yellow, t, 7);
drawFace(faceWhite, White, t);
drawFace(faceGrey, Grey);
drawEdgeFlipped(faceGreen, 3, Red);
drawEdgeFlipped(faceOrange, 5, Blue);
drawEdgeFlipped(faceYellow, 1, Blue);
drawEdgeFlipped(faceYellow, 5, Red);

