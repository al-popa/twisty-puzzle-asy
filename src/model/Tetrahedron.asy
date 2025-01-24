include "rubiks.asyhdr";

setView(45, 30, 0);

triple AA = X+Y+Z;
triple AB = X+Y-Z;
triple AC = X-Y+Z;
triple AD = X-Y-Z;
triple AE = -X+Y+Z;
triple AF = -X+Y-Z;
triple AG = -X-Y+Z;
triple AH = -X-Y-Z;

triple BA = X;
triple BB = Y;
triple BC = Z;
triple BD = -X;
triple BE = -Y;
triple BF = -Z;

polygon(AA--BA--BB, LightBlue);
polygon(AA--BB--BC, LightBlue);
polygon(AA--BC--BA, LightBlue);
polygon(AD--BA--BE, LightBlue);
polygon(AD--BE--BF, LightBlue);
polygon(AD--BF--BA, LightBlue);
polygon(AF--BB--BD, LightBlue);
polygon(AF--BD--BF, LightBlue);
polygon(AF--BF--BB, LightBlue);
polygon(AG--BC--BD, LightBlue);
polygon(AG--BD--BE, LightBlue);
polygon(AG--BE--BC, LightBlue);

polygon(AB--BA--BB, Pink);
polygon(AB--BB--BF, Pink);
polygon(AB--BF--BA, Pink);
polygon(AC--BA--BC, Pink);
polygon(AC--BC--BE, Pink);
polygon(AC--BE--BA, Pink);
polygon(AE--BB--BC, Pink);
polygon(AE--BC--BD, Pink);
polygon(AE--BD--BB, Pink);
polygon(AH--BD--BE, Pink);
polygon(AH--BE--BF, Pink);
polygon(AH--BF--BD, Pink);

