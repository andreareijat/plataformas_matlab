
num = [5 20];
den = [1 4 20];
T=0.1;
[numz,denz]=c2dm(num,den,T,'zoh');
G=tf(numz,denz,T);

[z,p,k] = tf2zpk(numz,denz)
%pzmap(G) %es estable, estan todas los polos dentro de la circunferencia de radio 1

num = [-2 1];
den = [1 2 1 2];
T=0.1;
[numz,denz]=c2dm(num,den,T,'zoh');
G=tf(numz,denz,T);

[z,p,k] = tf2zpk(numz,denz)
%pzmap(G) %estable, los polos estan dentro

num = [200];
den = [1 1 5 6 0];
T=0.1;
[numz,denz]=c2dm(num,den,T,'zoh');
G=tf(numz,denz,T);

[z,p,k] = tf2zpk(numz,denz)
pzmap(G) %estable, no importa que el cero este fuera, los polos estan dentro

