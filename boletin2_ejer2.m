%definicion de funciones de transferencia y ganancias

G1 = tf(2,1);
G2 = tf(1,[1,1]);
G3 = tf(1,[1 0]);
H1 = tf(1,2);
H2 = H1;

serie1 =series(G2,G3); %reduccion en serie de G2 con G3 
feedback_1 = feedback(serie1,H2,-1); %reduccion en paralelo con H2 con realimentacion negativa
serie2 =series(G1,feedback_1);%reduccion en serie de G1 
feedback_2 = feedback(serie2,H1/G3,1); %MODIFICAMOS EL DIAGRAMA ORIGINAL, MOVIENDO LA RAMA DE H1 DELANTE G3, DE AHI OBTENEMOS H1/G3, reduccion en paralelo con realimentacion positiva
C = feedback(feedback_2,1,-1)%feedback unitario con realimentacion negativa

