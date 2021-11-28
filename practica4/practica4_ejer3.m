% funcion en lazo abierto
G = tf(100, [1 6 0]);

w = logspace(-1, 3, 1000);
recta = -3 * ones(1, length(w));
semilogx(w, recta)
hold
G_cerrado = feedback(G, 1, -1);
bode(G_cerrado)