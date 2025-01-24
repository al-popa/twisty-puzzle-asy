//
include "sun.asyhdr";

setView(150, 60, -60);

real p = 0.473; // Measured
bool[] conf = new bool[] {false, true, true, false, true, true};

transform3 s = rotate(120, Z);

triple A = p * X;
triple B = s * A;
triple C = s * B;
triple D = -2 * C;
triple E = -2 * A;
triple F = -2 * B;

transform3 t = rotate(-20, A);

face faceRed = constructFace(p*A, p*D, conf);
face faceYellow = constructFace(p*B, p*E, conf);
face faceBlue = constructFace(p*C, p*F, conf);

real d = glueFaces(faceRed, faceYellow);
glueFaces(faceYellow, faceBlue);
glueFaces(faceBlue, faceRed);

drawFace(faceRed, Red, t);
drawFace(faceYellow, Yellow, t, 3);
drawFace(faceBlue, Blue, t, 0);

triple R1 = rotate(-120, faceRed.V[1]) * faceRed.R[0];
triple R2 = rotate(120, faceRed.V[2]) * faceRed.R[1];
triple Y1 = rotate(-120, faceYellow.V[1]) * faceYellow.R[0];
triple Y2 = rotate(120, faceYellow.V[2]) * faceYellow.R[1];
triple B1 = rotate(-120, faceBlue.V[1]) * faceBlue.R[0];
triple B2 = rotate(120, faceBlue.V[2]) * faceBlue.R[1];
triple TOP = (R1 + R2 + Y1 + Y2 + B1 + B2)/ 6;

triple R3 = rotate(-120, faceRed.V[4]) * faceRed.R[3];
triple R4 = rotate(120, faceRed.V[5]) * faceRed.R[4];
triple Y3 = rotate(-120, faceYellow.V[4]) * faceYellow.R[3];
triple Y4 = rotate(120, faceYellow.V[5]) * faceYellow.R[4];
triple B3 = rotate(-120, faceBlue.V[4]) * faceBlue.R[3];
triple B4 = rotate(120, faceBlue.V[5]) * faceBlue.R[4];
triple BOT = (R3 + R4 + Y3 + Y4 + B3 + B4)/ 6;

stick(faceRed.V[1]--faceRed.E[1]--TOP--faceYellow.E[1], Green, t);
stick(faceYellow.V[1]--faceYellow.E[1]--TOP--faceBlue.E[1], Green);
stick(faceBlue.V[1]--faceBlue.E[1]--TOP--faceRed.E[1], Green, t);
stick(faceRed.V[4]--faceRed.E[4]--BOT--faceBlue.E[4], Green, t);
stick(faceYellow.V[4]--faceYellow.E[4]--BOT--faceRed.E[4], Green, t);
stick(faceBlue.V[4]--faceBlue.E[4]--BOT--faceYellow.E[4], Green);

