%Ejecutar cada bloque por separado

%Definimos las funciones de transferencia
G1=tf([1 0 1],[1 2 0]);
G2=tf([1 2],[1 2 1]);
G3=tf(1,conv([1 0],[1 2 1]));
G4=tf([1 5 0],conv([1 2],conv([1 4],[1 4 7])));

%% Mostramos los LGDR de los 4 sistemas
subplot(221)
rlocus(G1);
subplot(222)
rlocus(G2);
subplot(223)
rlocus(G3);
subplot(224)
rlocus(G4);

% Calculamos los valores de K con rclocfind a partir de los cuales el sistema es inestable

%% G1
rlocus(G1)
hold;
grid;
rlocfind(G1)

%% G2
rlocus(G2)
hold;
grid;
rlocfind(G2)

%% G3
rlocus(G3)
hold;
grid
rlocfind(G3)

%% G4
rlocus(G4)
hold;
grid;
rlocfind(G4)
