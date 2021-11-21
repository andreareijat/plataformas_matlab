%entrada escalon unitario (error de posicion)
Kp=1/8; %G(0)
ep=1/(1+Kp)
%entrada rampa unitaria (error de velocidad)

%ev=1/Kv;
%error parabola unitaria (error de aceleracion)
%ea=1/Ka;

%obtenemos la funcion en lazo cerrado de G1
t1=tf(1,[1 6 9]);
step(t1) %respuesta para una entrada escalon
hold

%obtenemos la funcion en lazo cerrado de G2
t2=tf(8,[1 3 8]);
step(t2)

