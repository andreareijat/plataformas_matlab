% obtenemos las funciones de transferencia para cada valor de K
K = 10;
T = tf(5*K, [1 15 K]);

K = 200;
T2 = tf(5*K, [1 15 K]);

K = 500;
T3 = tf(5*K, [1 15 K]);

% obtenemos los datos de cada funcion
[y1, t1] = step(T);
step(T)
hold
step(T2)
[y2,t2] = step(T2);
step(T3)
[y3, t3] = step(T3);


% obtenemos los porcentajes de sobreoscilación s1, s2, s3 a partir del
% valor mas alto de los vectores yi
w1=max(y1);
w2=max(y2);
w3=max(y3);

s1=(w1-y1(length(y1)))/y1(length(y1))*100
s2=(w2-y2(length(y2)))/y2(length(y2))*100
s3=(w3-y3(length(y3)))/y3(length(y3))*100

% calculo del tiempo de asentamiento para el criterio del 2%
yss=y1(length(y1));
i=length(t1);
while y1(i)>=0.98*yss && y1(i)<=1.02*yss
    i=i-1;
end

ta1=t1(i+1)

yss=y2(length(y2));
i=length(t2);
while y2(i)>=0.98*yss && y2(i)<=1.02*yss
    i=i-1;
end

ta2=t2(i+1)

yss=y3(length(y3));
i=length(t3);
while y3(i)>=0.98*yss && y3(i)<=1.02*yss
    i=i-1;
end

ta3=t3(i+1)

% calculamos los errores como, la ganancia menos el ultimo valor de cada
% funcion
error1 = 5 - y1(length(y1))
error2 = 5 - y2(length(y2))
error3 = 5 - y3(length(y3))