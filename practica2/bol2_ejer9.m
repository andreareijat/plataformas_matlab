G1=tf(0.8,[1 1 0.5]);
G2=tf(1,[1 0]);
G3=tf(1,[1 1]);

feedback1=parallel(G2, tf(1,1));
serie1=series(feedback1,G3);
feedback2=feedback(serie1,1,-1);
serie2=series(G1,feedback2);
fe=feedback(serie2,1,-1)

% sacamos los datos
[zeros polos K] = zpkdata(fe, 'v')

%impulse(fe)
%hold
%step(2*fe)



t = 0:0.01:100;
signal1 = 0.*(t>=0);
signal2 = 1.*(t>=10);
signal3 = (1).*(t>=20);
signal4 = (-2.5).*(t>=50);
signal5 = (0.5).*(t>=80);
signal = signal1 + signal2 + signal3 +signal4 + signal5;

lsim(fe, signal, t)
