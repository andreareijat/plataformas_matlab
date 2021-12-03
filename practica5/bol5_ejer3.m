T=0.1;
numz=[1 3 0.75];
denz=[1 -0.2 -1.9];

G=tf(numz,denz,T);
pzmap(G)
rlocus(G)