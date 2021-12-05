plot(tiempo,temperatura) %mostramos la grafica real del horno

%para obtener el T del horno cogemos el indice de la temperatura cuando supera el 63%
ie = 0; 
for i = 1:length(temperatura)
    if temperatura(i) > 0.63*temperatura(length(temperatura))
        ie = i;
        break
    end
end
T = tiempo(ie);

G=tf(K,[T 1])
[y,tOut] = step(2*G,10); %le aplicamos una entrada tipo escalon de amplitud 2
hold on
plot(tOut,y)%mostramos la salida del sistema
legend('sistema real','modelo');

%para obtener el T del horno cogemos el indice de la temperatura cuando supera el 95%
ie2 = 0; 
for i = 1:length(temperatura)
    if temperatura(i) > 0.95*temperatura(length(temperatura))
        ie2 = i;
        break
    end
end
T2 = tiempo(ie2);

%para una señal rampa
figure
t_t=0:0.01:10;
rampa=0.5*t_t;
[y_rampa,t]=lsim(G,rampa,t_t); %aplicamos la entrada rampa al sistema
plot(t,y_rampa,t_t,rampa) %mostramos la rampa y el salida del sistema para la entrada rampa
legend('respuesta del sistema','señal rampa');
