%G = tf(4, [1 1 2 4])


% para w=2 y z=0.5

% para s = -10 -> Tc = 0.1
G1 = tf(4, [0.1 1.2 2.4 4]);
% para s = -2 -> Tc = 0.5
G2 = tf(4, [0.5 2 4 4]);
% para s = -0.1 -> Tc = 10
G3 = tf(4, [10 21 42 4]);
% para s = 0 -> Tc = 0
G4 = tf(4, [1 2 4]);


% step(G1)
% hold
% step(G2)
% step(G3)
% step(G4)

pzmap(G1)
hold

pzmap(G2)
pzmap(G3)
pzmap(G4)