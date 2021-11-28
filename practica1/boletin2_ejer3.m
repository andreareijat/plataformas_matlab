% definiciones de las funciones de transferencia
G1 = tf(4,1);
G2 = tf(1,[1 1]);
G3 = tf([1 0],[1 0 2]);
rampa = tf(1,[1 0 0]);

H1 = tf([4 2], [1 2 1]);
H2 = tf(50, 1);
H3 = tf([1 0 2], [1 0 0 14]);

feedback1 = feedback(rampa, H2, 1);
serie1 = series(G2, G3);
feedback2 = feedback(serie1, H1, -1);
serie2 = series(feedback1, feedback2);
feedback3 = feedback(serie2, H3, -1);

Y = series(G1, feedback3)

pzmap(Y)

% La función es de orden 10