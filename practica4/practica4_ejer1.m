%% Apartado a) Margenes de ganancia y fase para valores de K = 0.1, K = 2, K = 10
% Descomentar cada margin para ver los datos
K = 0.1;
% funcion en lazo abierto
G1 = tf(K, [1 2 1 0]);
% Se muestran los margenes de ganancia y fase
%margin(G1);

K = 2;
% funcion en lazo abierto
G2 = tf(K, [1 2 1 0]);
% Se muestran los margenes de ganancia y fase
margin(G2);

K = 10;
% funcion en lazo abierto
G3 = tf(K, [1 2 1 0]);
% Se muestran los margenes de ganancia y fase
%margin(G3)

%% Apartado b) calculo de respuesta en lazo cerrado a escalon

% funcion en lazo cerrado
G1_cerrado = feedback(G1, 1, -1);
subplot(131)
step(G1_cerrado) % Para K = 0.1 tenemos un sistema estable

% funcion en lazo cerrado
G2_cerrado = feedback(G2, 1, -1);
subplot(132)
step(G2_cerrado) % Para K = 2 tenemos un sistema estable pero oscilante

% funcion en lazo cerrado
G3_cerrado = feedback(G3, 1, -1);
subplot(133)
step(G3_cerrado) % Para K = 10 tenemos un sistema intestable
