% definimos las funciones de transferencia
G1 = tf(4,1);
G2 = tf(1,[1 1]);
G3 = tf([1 0],[1 0 2]);
rampa = tf(1,[1 0 0]);
H1 = tf([4 2], [1 2 1]);
H2 = tf(50, 1);
H3 = tf([1 0 2], [1 0 0 14]);

feedback1 = feedback(rampa, H2, 1); %realimentacion positiva de H2 con la funcion rampa
serie1 = series(G2, G3); %G2 en serie con G3
feedback2 = feedback(serie1, H1, -1); %realimentacion negativa de H1 con serie1
serie2 = series(feedback1, feedback2); %serie de feedback1 con feedback2
feedback3 = feedback(serie2, H3, -1); %realimentacion negativa de serie2 con H3

Y = series(G1, feedback3) %serie de G1 con feedback3

pzmap(Y) %generamos el mapa de polos y ceros

