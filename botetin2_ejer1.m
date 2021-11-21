%definicion de funciones de transferencia y ganancias
K = tf(3,1); 
G1 = tf(1,[1 1]);
G2 = tf(4,1);
H1 = tf(1,1);
H2 = tf(1,[1 3]);
H3 = tf(1,[1 5]);
escalon=tf(1,[1 0]); 

feedback_1= feedback(G1,H3,-1); %reduccion en paralelo de G1 con H3 con realimentacion negativa
serie1 =series(feedback_1,G2); %reduccion en serie con G2
feedback_2 = feedback(serie1,H2,-1); %reduccion en paralelo de H2 con realimentacion negativa
feedback_3 = feedback(feedback_2,H1,-1); %reduccion en paralelo H1 con realimentacion negativa
serie2 =series(K,feedback_3);%reduccion en serie con K
serie3 =series(serie2,escalon);%reduccion en serie con el escalon unitario
Y = feedback(serie3,1,-1)%reduccion en paralelo unitaria

