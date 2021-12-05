%% Apartado 1. Calculo de ganancia y fase
% funcion en lazo abierto
G = tf(54, [1 6 0]);
margin(G);
% [Mg, Mf, w1, w2] = margin(G);
% %Margenes de ganancia y fase
% Mg_Db = 20 * log10(Mg)
% Mf

%% Apartado 2. Calculo ancho de banda en lazo cerrado con el diagrama de Bode
w = logspace(-1, 3, 1000);
recta = -3 * ones(1, length(w));
semilogx(w, recta)
hold
G_cerrado = feedback(G, 1, -1);
bodemag(G_cerrado)
