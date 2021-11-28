%obtenemos la grafica de la funcion y la recta que genera z=0.707
G=tf([1 1],[1 0 0]);
rlocus(G)
grid 
hold
line([0 -0.707*100], [0 0.707*100])
%localizamos el punto de corte de ambas graficas y obtenemos el valor de K
rlocfind(G)
hold
%respuesta para K=2
serie1=series(2,G);
Y=feedback(serie1,1,-1);
step(Y)