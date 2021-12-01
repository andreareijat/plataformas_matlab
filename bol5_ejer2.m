T=0.1;
numz=[1.7 1.7*0.46];
denz=[1 1 0.5];
G1 = tf(numz,denz,T);
[y,t]=step(G1);
stem(t,y)

%calculamos la respuesta continua equivalente
[N,D]=d2cm(numz,denz,T,'zoh');
G_continuo=tf(N,D)
hold on
step(G_continuo,'red')