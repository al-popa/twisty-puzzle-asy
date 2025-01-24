//
include "rubiks.asyhdr";

setView(-105, 0, -50);

real L = 0.8; // Guess
real dual(real x)
{
	return sqrt(1*1 + L*L - x*x) - L;
}
real r1 = 0.2; // Guess
real r2 = 0.35; // Guess
real r3 = (sqrt(L * L + 7) - L) * sqrt(6) / 7;

real a1 = dual(r1);
real a2 = dual(r2);
real a3 = dual(r3);

transform3 s = rotate(120, Z);
transform3 p = rotate(45, X);
transform3 pp = p * p; 
transform3 t = rotate(-5, X);

triple A = a1 * X;
triple B = s * A;
triple C = s * B;

triple AA = a1 * X + r1 * (p * Z);
triple AB = pp * AA;
triple AC = pp * AB;
triple AD = pp * AC;
triple AE = a2 * X + r2 * Z;
triple AF = pp * AE;
triple AG = pp * AF;
triple AH = pp * AG;
triple AI = a3 * X + r3 * (p * Z);
triple AJ = pp * AI;
triple AK = pp * AJ;
triple AL = pp * AK;

triple BA = s * AA;
triple BB = s * AB;
triple BC = s * AC;
triple BD = s * AD;
triple BE = s * AE;
triple BF = s * AF;
triple BG = s * AG;
triple BH = s * AH;
triple BI = s * AI;
triple BJ = s * AJ;
triple BK = s * AK;
triple BL = s * AL;

triple CA = s * BA;
triple CB = s * BB;
triple CC = s * BC;
triple CD = s * BD;
triple CE = s * BE;
triple CF = s * BF;
triple CG = s * BG;
triple CH = s * BH;
triple CI = s * BI;
triple CJ = s * BJ;
triple CK = s * BK;
triple CL = s * BL;

stick(AA--AB--AC--AD, Red, t);
stick(AD--AA--AE, Red, t);
stick(AA--AB--AF, Red, t);
stick(AB--AC--AG, Red, t);
stick(AC--AD--AH, Red, t);
stick(AA--AE--AI--AF, Red, t);
stick(AB--AF--AJ--AG, Red, t);
stick(AC--AG--AK--AH, Red, t);
stick(AD--AH--AL--AE, Red, t);
stick(AE--AL--Z--AI, Red, t);
stick(AF--AI--AJ, Red, t);
stick(AG--AJ--(-Z)--AK, Red, t);
stick(AH--AK--AL, Red, t);

stick(BA--BB--BC--BD, Yellow);
stick(BD--BA--BE, Yellow);
stick(BA--BB--BF, Yellow, t);
stick(BB--BC--BG, Yellow);
stick(BC--BD--BH, Yellow);
stick(BA--BE--BI--BF, Yellow, t);
stick(BB--BF--BJ--BG, Yellow, t);
stick(BC--BG--BK--BH, Yellow);
stick(BD--BH--BL--BE, Yellow);
stick(BE--BL--Z--BI, Yellow, t);
stick(BF--BI--BJ, Yellow, t);
stick(BG--BJ--(-Z)--BK, Yellow, t);
stick(BH--BK--BL, Yellow);

stick(CA--CB--CC--CD, Blue);
stick(CD--CA--CE, Blue);
stick(CA--CB--CF, Blue);
stick(CB--CC--CG, Blue);
stick(CC--CD--CH, Blue, t);
stick(CA--CE--CI--CF, Blue);
stick(CB--CF--CJ--CG, Blue);
stick(CC--CG--CK--CH, Blue, t);
stick(CD--CH--CL--CE, Blue, t);
stick(CE--CL--Z--CI, Blue, t);
stick(CF--CI--CJ, Blue);
stick(CG--CJ--(-Z)--CK, Blue, t);
stick(CH--CK--CL, Blue, t);

polygon(O--BA--BB, Background);
polygon(O--CC--CD, Background);
polygon(O--BA--BE, Background);
polygon(O--BE--CE, Background);
polygon(O--CE--CD, Background);
polygon(O--BB--BG, Background);
polygon(O--BG--CG, Background);
polygon(O--CG--CC, Background);
polygon(BE--CE--CI, Background);
polygon(BG--CG--CJ, Background);

polygon(O--BA--BB, Background, t);
polygon(O--CC--CD, Background, t);
polygon(O--BA--BE, Background, t);
polygon(O--BE--CE, Background, t);
polygon(O--CE--CD, Background, t);
polygon(O--BB--BG, Background, t);
polygon(O--BG--CG, Background, t);
polygon(O--CG--CC, Background, t);
polygon(BE--CE--CI, Background, t);
polygon(BG--CG--CJ, Background, t);

