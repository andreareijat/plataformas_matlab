%% Definimos la funcion de transferencia
G=tf([1 1],[1 0 0]);

rlocus(G) %muestra el lugar de las raices de la funcion
grid %red
hold
line([0 -0.707*100], [0 0.707*100]) %Recta que genera z=0.707

%localizamos el punto de corte de ambas graficas y obtenemos el valor de K
rlocfind(G) %devuelve el valor de K correspondiente al punto que marquemos en el mapa
hold

%% Respuesta para K=2
serie1=series(2,G); 
Y=feedback(serie1,1,-1); %funcion en lazo cerrado con ganancia K=2
step(Y) %entrada tipo escalon