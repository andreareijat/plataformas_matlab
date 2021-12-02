%% Sistema a)
num = [5 20];
den = [1 4 20];
T=0.1;
% Obtenemos nuestro numerador y denominador discretos para T=0.1 y
% retenedor de orden 0
[numz,denz]=c2dm(num,den,T,'zoh');
G=tf(numz,denz,T);

pzmap(G) % es estable, estan todos los polos dentro 
         % de la circunferencia unidad

%% Sistema b)
num = [-2 1];
den = [1 2 1 2];
T=1;
% Obtenemos nuestro numerador y denominador discretos para T=0.1 y
% retenedor de orden 0
[numz,denz]=c2dm(num,den,T,'zoh');
G=tf(numz,denz,T);

pzmap(G) % marginalmente estable, todos los polos estan dentro

%% Sistema c)
num = [200];
den = [1 1 5 6 0];
T=0.1;
% Obtenemos nuestro numerador y denominador discretos para T=0.1 y
% retenedor de orden 0
[numz,denz]=c2dm(num,den,T,'zoh');
G=tf(numz,denz,T);

pzmap(G) % inestable ya que hay un polo complejo 
         % fuera del circulo unidad a la derecha del todo

