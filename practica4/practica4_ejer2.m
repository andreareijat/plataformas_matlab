% funcion en lazo abierto
G = tf(54, [1 6 0]);
[Mg, Mf, w1, w2] = margin(G);
% Margenes de ganancia y fase
Mg_Db = 20 * log10(Mg)
Mf

w = logspace(-1, 3, 1000);
recta = -3 * ones(1, length(w));
semilogx(w, recta)
hold
G_cerrado = feedback(G, 1, -1);
bodemag(G_cerrado)


