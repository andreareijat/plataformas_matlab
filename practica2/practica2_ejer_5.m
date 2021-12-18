%% Sección 1. Representando la gráfica con controlador 2
controlador = 2;
servo_elevador = tf(-10, [1 10]);
modelo_avion = tf([-1 -5], [1 3.5 6 0]);

% Funcion en lazo cerrado
G1 = feedback(series(controlador, series(servo_elevador, modelo_avion)), 1, -1)

intervalo = 0.1;
t = 0:intervalo:15;
y = 0.5*t;
lsim(G1, y, t); % se representa la gráfica con la recta como entrada
[y1, tOut, x1] = lsim(G1, y, t); % se extraen los datos

% valores despues de 10 segundos
recta_10seg = y(10/intervalo)
fn_10seg    = y1(10/intervalo)

% se calcula el error
error_recta_fn = recta_10seg - fn_10seg
hold
%% Sección 2. Mejorando la respuesta con otro controlador
controlador = tf([2 1], [1 0]);
servo_elevador = tf(-10, [1 10]);
modelo_avion = tf([-1 -5], [1 3.5 6 0]);

% Funcion en lazo cerrado
G1 = feedback(series(controlador, series(servo_elevador, modelo_avion)), 1, -1)

intervalo = 0.1;
t = 0:intervalo:15;
y = 0.5*t;
lsim(G1, y, t); % se representa la gráfica con la recta como entrada
[y1, tOut, x1] = lsim(G1, y, t); % se extraen los datos

% valores despues de 10 segundos
recta_10seg = y(10/intervalo)
fn_10seg    = y1(10/intervalo)

% se calcula el error
error_recta_fn = recta_10seg - fn_10seg

