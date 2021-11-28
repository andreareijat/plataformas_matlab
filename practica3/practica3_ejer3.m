G1=tf([1 0 1],[1 2 0]);
G2=tf([1 2],[1 2 1]);
G3=tf(1,conv([1 0],[1 2 1]));
G4=tf([1 5 0],conv([1 2],conv([1 4],[1 4 7])));
subplot(221)
rlocus(G1)
subplot(222)
rlocus(G2)
subplot(223)
rlocus(G3)
subplot(224)
rlocus(G4)
