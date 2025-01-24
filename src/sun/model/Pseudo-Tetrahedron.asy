//
include "sun.asyhdr";

setView(110, 45, -10);

real dual(real r)
{
	return sqrt(1 - r * r);
}

real k = -0.5;
real phi = 13.2; // Guess
real cp = Cos(phi);
real sp = Sin(phi);
real p = 0.861; // Guess
real q = dual(p) / Cos(360 / 7);

bool[] conf = new bool[] {false, true, false, true, true, false, true};

face faceRed = constructFace(q * (cp * X + sp * Z), q * (cp * X + sp * Z) - p * (sp * X - cp * Z), conf, k);
face faceGreen = constructFace(q * (cp * Y - sp * Z), q * (cp * Y - sp * Z) - p * (sp * Y + cp * Z), conf, k);
face faceYellow = constructFace(q * (-cp * X + sp * Z), q * (-cp * X + sp * Z) - p * (-sp * X - cp * Z), conf, k);
face faceBlue = constructFace(q * (-cp * Y - sp * Z), q * (-cp * Y - sp * Z) - p * (-sp * Y + cp * Z), conf, k);

transform3 t = rotate(-20, cp * X + sp * Z);

real d = glueFaces(faceRed, faceGreen);
glueFaces(faceGreen, faceYellow, d);
glueFaces(faceYellow, faceBlue, d);
glueFaces(faceBlue, faceRed, d);

drawFace(faceRed, Red, t);
drawFace(faceGreen, Green, t, 5);
drawFace(faceYellow, Yellow);
drawFace(faceBlue, Blue, t, 2);

transform3 er = rotate(180, faceRed.V[-1] + faceRed.V[1]);
transform3 eg = rotate(180, faceGreen.V[-1] + faceGreen.V[1]);
transform3 ey = rotate(180, faceYellow.V[-1] + faceYellow.V[1]);
transform3 eb = rotate(180, faceBlue.V[-1] + faceBlue.V[1]);

triple RA = er * faceRed.R[-1];
triple RB = er * faceRed.P[-1];
triple RC = er * faceRed.P[0];
triple RD = er * faceRed.R[-2];
triple RE = er * faceRed.R[0];
triple GA = eg * faceGreen.R[-1];
triple GB = eg * faceGreen.P[-1];
triple GC = eg * faceGreen.P[0];
triple GD = eg * faceGreen.R[-2];
triple GE = eg * faceGreen.R[0];
triple YA = ey * faceYellow.R[-1];
triple YB = ey * faceYellow.P[-1];
triple YC = ey * faceYellow.P[0];
triple YD = ey * faceYellow.R[-2];
triple YE = ey * faceYellow.R[0];
triple BA = eb * faceBlue.R[-1];
triple BB = eb * faceBlue.P[-1];
triple BC = eb * faceBlue.P[0];
triple BD = eb * faceBlue.R[-2];
triple BE = eb * faceBlue.R[0];

stick(faceRed.E[-1]--faceRed.E[0]--RA, Tan, t);
stick(faceGreen.E[-1]--faceGreen.E[0]--GA, Tan);
stick(faceYellow.E[-1]--faceYellow.E[0]--YA, Tan);
stick(faceBlue.E[-1]--faceBlue.E[0]--BA, Tan);
stick(RA--RB--RC, Tan, t);
stick(GA--GB--GC, Tan);
stick(YA--YB--YC, Tan);
stick(BA--BB--BC, Tan);
stick(faceRed.E[-1]--RA--RC--RE, Tan, t);
stick(faceRed.E[0]--RA--RB--RD, Tan, t);
stick(faceGreen.E[-1]--GA--GC--GE, Tan);
stick(faceGreen.E[0]--GA--GB--GD, Tan);
stick(faceYellow.E[-1]--YA--YC--YE, Tan);
stick(faceYellow.E[0]--YA--YB--YD, Tan);
stick(faceBlue.E[-1]--BA--BC--BE, Tan);
stick(faceBlue.E[0]--BA--BB--BD, Tan);
stick(faceRed.V[-1]--faceRed.E[-1]--RE--faceGreen.E[3], Tan, t);
stick(faceYellow.V[1]--faceYellow.E[0]--YD--faceGreen.E[3], Tan);
stick(faceGreen.V[-1]--faceGreen.E[-1]--GE--faceRed.E[3], Tan, t);
stick(faceBlue.V[1]--faceBlue.E[0]--BD--faceRed.E[3], Tan, t);
stick(faceRed.V[1]--faceRed.E[0]--RD--faceBlue.E[3], Tan, t);
stick(faceYellow.V[-1]--faceYellow.E[-1]--YE--faceBlue.E[3], Tan);
stick(faceGreen.V[1]--faceGreen.E[0]--GD--faceYellow.E[3], Tan);
stick(faceBlue.V[-1]--faceBlue.E[-1]--BE--faceYellow.E[3], Tan);

