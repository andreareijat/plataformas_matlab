T=0.1;
numz=[1 0];
denz=[1 -1 0.45];

G=tf(numz,denz,T);
pzmap(G)
rlocus(G)