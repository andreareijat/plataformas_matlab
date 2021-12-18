%% Punto 1. Representar la misma gráfica para diferentes valores de Tc

% para s = -10 -> Tc = 0.1
G1 = tf(4, [0.1 1.2 2.4 4]);
% para s = -2 -> Tc = 0.5
G2 = tf(4, [0.5 2 4 4]);
% para s = -0.1 -> Tc = 10
G3 = tf(4, [10 21 42 4]);
% para s = 0 -> Tc = 0
G4 = tf(4, [1 2 4]);

step(G1)
hold on

step(G2)

step(G3)

step(G4)

%% Punto 2. Dibujar Polos y Ceros

subplot(221)
%pzmap(G1)
rlocus(G1)

subplot(222)
%pzmap(G2)
rlocus(G2)

subplot(223)
%pzmap(G3)
rlocus(G3)

subplot(224)
%pzmap(G4)
rlocus(G4)
