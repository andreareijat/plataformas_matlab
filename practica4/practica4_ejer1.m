K = 0.1;
% funcion en lazo abierto
G = tf(K, [1 2 1 0]);
[Mg, Mf, w1, w2] = margin(G);
% Margenes de ganancia y fase
Mg_Db = 20 * log(Mg)
Mf

% funcion en lazo cerrado
G_cerrado = feedback(G, 1, -1);
subplot(131)
step(G_cerrado)


K = 2;
% funcion en lazo abierto
G = tf(K, [1 2 1 0]);
[Mg, Mf, w1, w2] = margin(G);
% Margenes de ganancia y fase
Mg_Db = 20 * log(Mg)
Mf

% funcion en lazo cerrado
G_cerrado = feedback(G, 1, -1);
subplot(132)
step(G_cerrado)


K = 10;
% funcion en lazo abierto
G = tf(K, [1 2 1 0]);
[Mg, Mf, w1, w2] = margin(G);
% Margenes de ganancia y fase
Mg_Db = 20 * log(Mg)
Mf

% funcion en lazo cerrado
G_cerrado = feedback(G, 1, -1);
subplot(133)
step(G_cerrado)