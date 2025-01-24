//
settings.render = 8;

size(10cm);

pair A = (0, 1);
pair B = (1, 0);
pair C = (0, -1);
pair D = (-1, 0);

path left = arc(B, A, C);
path right = arc(D, C, A);
path top = arc(C, B, D);
path bottom = arc(A, D, B);

pair E = intersectionpoint(right, top);
pair F = intersectionpoint(left, top);
pair G = intersectionpoint(left, bottom);
pair H = intersectionpoint(right, bottom);

path ul = arc(H, E, G);
path br = arc(F, G, E);
path ur = arc(G, H, F);
path bl = arc(E, F, H);

pair I = intersectionpoint(ul, bl);
pair J = intersectionpoint(bl, br);
pair K = intersectionpoint(br, ur);
pair L = intersectionpoint(ur, ul);

draw(unitcircle, white);

draw(left);
draw(right);
draw(arc(H, E, L));
draw(arc(H, I, G));
draw(arc(F, G, J));
draw(arc(F, K, E));
draw(arc(G, H, K));
draw(arc(G, L, F));
draw(arc(E, F, I));
draw(arc(E, J, H));
draw(arc(J, K, I));
draw(arc(L, I, K));
draw(arc(K, L, J));
draw(arc(I, J, L));

