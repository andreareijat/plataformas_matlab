%Definimos las funciones de transferencia
G1=tf([1 -4],[1 1 3 9 16 10]);
G2=tf([1 8],[1 1 6 2 3]);
G3=tf([1 3 8],[1 4 8 8 7 4]);


% Inestable
subplot(231)
step(G1);legend('G1');
subplot(234)
pzmap(G1);legend('G1'); %mostramos el mapa de polos y ceros para el analisis

% Subamortiguado
subplot(232)
step(G2);legend('G2');
subplot(235)
pzmap(G2);legend('G2');

% Marginalmente estable
subplot(233)
step(G3);legend('G3');
subplot(236)
pzmap(G3);legend('G3');


