%% Funciones de transferencia para wn=2 y z=1
T1=tf([-4 8],[1 2 4]);%s=2
T2=tf([1 0],[1 2 4]);%s=0
T3=tf([4 8],[1 2 4]); %s=-2
T4=tf(4,[1 2 4]);%sin cero
step(T1)
hold
step(T2)
step(T3)
step(T4)
legend('s=2','s=0','s=-2','sin cero');

%% dibujamos los polos y ceros, comentar el hold
pzmap(T1,T2,T3,T4)