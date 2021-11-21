
% Ejecutar antes el Smulink para extraer los datos y poder plotearlos
% El programa es más rápido y tiene más sobreelongación cuando la Z es
% menor

plot(out.tout, out.function_3, out.tout, out.function_6, out.tout, out.function_12)
legend('función con z=3', 'functión con z=6', 'función con z=12')