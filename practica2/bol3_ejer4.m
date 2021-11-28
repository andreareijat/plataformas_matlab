G1=tf(4,[1 0 4]);
G2=tf(4,[1 0.4 4]);
G3=tf(1,[1 0 1]);
G4=tf(1,[1 0.4 1]);

subplot(2,2,1);
impulse(G1)

subplot(2,2,2);
impulse(G2)

subplot(2,2,3);
impulse(G3)

subplot(2,2,4);
impulse(G4)
