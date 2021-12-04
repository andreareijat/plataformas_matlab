T=0.1; %definimos el periodo de muestreo

%definimos la funcion de transferencia
numz=[1.7 1.7*0.46];
denz=[1 1 0.5];
G1 = tf(numz,denz,T);

[y,t]=step(G1);% le aplicamos una entrada de tipo escalon unitario
stem(t,y) %mostramos el sistema discreto

%calculamos la funcion de transferencia continua equivalente
[N,D]=d2cm(numz,denz,T,'zoh');
G_continuo=tf(N,D)
hold on

step(G_continuo,'red') %le aplicamos una entrada del tipo escalon
legend('funcion discreta','funcion continua');
