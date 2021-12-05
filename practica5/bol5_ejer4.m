T=0.1; %definimos el periodo de muestreo
numz=[1 0];
denz=[1 -1 0.45];

G=tf(numz,denz,T) %definimos la funcion de transferencia

%% generamos el mapa de polos y ceros
pzmap(G) 

%% mostramos el lugar de las raices
rlocus(G) 

