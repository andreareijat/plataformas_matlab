%inicializamos las funciones de trasnferencia para las 4 variantes del enunciado
G1=tf(4,[1 0 4]); %wn=2 z=0
G2=tf(4,[1 0.4 4]); %wn=2 z=0.1
G3=tf(1,[1 0 1]); %wn=1 z=0
G4=tf(1,[1 0.4 1]); %wn=1 z=0.2

subplot(2,2,1);
impulse(G1) %entrada de tipo impulso
legend('wn=2 z=0');

subplot(2,2,2);
impulse(G2)
legend('wn=2 z=0.1');

subplot(2,2,3);
impulse(G3)
legend('wn=1 z=0');

subplot(2,2,4);
impulse(G4)
legend('wn=1 z=0.2');

