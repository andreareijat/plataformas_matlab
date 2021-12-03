%% Apartado 1. Funcion de transferencia equivalente
G1=tf(0.8,[1 1 0.5]);
G2=tf(1,[1 0]);
G3=tf(1,[1 1]);

feedback1=parallel(G2, tf(1,1));
serie1=series(feedback1,G3);
feedback2=feedback(serie1,1,-1);
serie2=series(G1,feedback2);

f_eq = feedback(serie2,1,-1)

[zeros polos K] = zpkdata(f_eq, 'v')

%% Apartado 2. Salida a entradas de escalón e impulso
impulse(f_eq)
hold
step(2*f_eq)


%% Apatado 3. Aplicando señal cuadrada como entrada
t = 0:0.01:100;
signal1 = 0.*(t>=0);
signal2 = 1.*(t>=10);
signal3 = (1).*(t>=20);
signal4 = (-2.5).*(t>=50);
signal5 = (0.5).*(t>=80);
signal = signal1 + signal2 + signal3 +signal4 + signal5;

lsim(f_eq, signal, t)
