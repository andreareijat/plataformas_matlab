%controlador = 2;
controlador = tf([2 1], 1);
servo_elevador = tf(-10, [1 10]);
modelo_avion = tf([-1 -5], [1 3.5 6 0]);

G1 = feedback(series(controlador, series(servo_elevador, modelo_avion)), 1, -1)



t = 0:0.1:1;
y = 0.5*t;
lsim(G1, y, t)
% 
% plot(t, y)