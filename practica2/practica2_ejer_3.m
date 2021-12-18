%% Punto 1.Función de transferencia equivalente y salida a escalón
G1 = 3;
G2 = 1.25;
G3 = tf(1, [0.3 1]);
G4 = tf(1, [1 0]);
G5 = 0.5;
H1 = 0.25;

serie1 = series(G1, series(G2, G3));
feedback1 = feedback(serie1, H1, -1);

% función de transferencia equivalente
G = series(feedback1, series(G4, G5))
step(G)

%% Punto 2. Añadir ganancia y calcular ganancia en estado estacionario.
Km = 20;
G_K20 = feedback(series(G, Km), 1, -1);
step(G_K20);
[y, t] = step(G_K20);
Ganancia_ss = y(length(y))

hold

Km = 10;
G_K10 = feedback(series(G, Km), 1, -1);
step(G_K10);

Km = 30;
G_K30 = feedback(series(G, Km), 1, -1);
step(G_K30);