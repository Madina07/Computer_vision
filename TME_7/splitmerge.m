% Lecture de l'image
I = ouvrirImage('cygnus.tif');

% Extension de l'image à une taille en puissance de 2
J = expand(I);
imageview(J);

% Découpage en Quadtree selon le critère d'homogénéité
S = qtdecomp(J,5,8);
n = numreg(S);
Q = quaddraw(J,S);

% Merge
F = fusion(S,J,10);
Fc = label2rgb(F);
imageview(F);