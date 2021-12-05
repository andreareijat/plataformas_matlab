
G1=tf(1,[1 6 9]); %funcion G1 en lazo abierto
G2=tf(8,[1 3 8]); %funcion G2 en lazo abierto
t2=tf(1,[1 0]);
t3=tf(1,[1 0 0]);

%G1
%ENTRADA ESCALON
subplot(231)
step(G1,10);%respuesta para una entrada escalon
legend('escalon unitario G1');

%ENTRADA RAMPA
t=0:0.1:10;
C1=t2*G1; %multiplicamos la funcion de transferencia en lazo cerrador por 1/s
c=step(C1,t); %respuesta para una entrada rampa
subplot(232)
plot(t,c,t,t)
legend('rampa G1');

%ENTRADA PARABOLA
C1=t3*G1; %multiplicamos la funcion de transferencia en lazo cerrador por 1/s
c1=step(C1,t); %respuesta para una entrada rampa
subplot(233)
plot(t,c1,t,t.*t)
legend('parabola G1');

%G2
%ENTRADA ESCALON
subplot(234)
step(G2,10);%respuesta para una entrada escalon
legend('escalon unitario G2');

%ENTRADA RAMPA
C1=t2*G2; %multiplicamos la funcion de transferencia en lazo cerrador por 1/s
c1=step(C1,t); %respuesta para una entrada rampa
subplot(235)
plot(t,c1,t,t)
legend('rampa G2');

%ENTRADA PARABOLA
C1=t3*G2; %multiplicamos la funcion de transferencia en lazo cerrador por 1/s
c1=step(C1,t); %respuesta para una entrada rampa
subplot(236)
plot(t,c1,t,t.*t)
legend('parabola G2');
