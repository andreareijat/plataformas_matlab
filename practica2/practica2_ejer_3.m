% función de transferencia en lazo cerrado
G = tf(1.875,[0.3 4.75 0]);
step(G)
% TODO: es estable el sistema? comentarlo desde un punto de vista fisico

Km = 20;
serie1 = series(G, Km);
fb1 = feedback(serie1, 1, -1);
% falta la saber la ganancia en estado estacionario
%step(fb1)
