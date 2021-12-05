%% Apartado a)
% funcion en lazo abierto
G = tf(100, [1 6 0]);

w = logspace(-1, 3, 1000);
G_cerrado = feedback(G, 1, -1)
[mag, phase] = bode(G_cerrado, w);

% Obtención del ancho de banda
wb = 0;
for i = 1:length(mag)
    if 20 * log10(mag(i)) <= -3
        wb = w(i);
        break
    end
end

wb

% Obtención del pico de resonancia y frencuencia de resonancia
Mpw = max(mag)
wr = 0;
for i = 1:length(mag)
    if mag(i) == Mpw
        wr = w(i);
        break
    end
end

wr

%% Apartado c)
% calculamos Wn
[num, den] = tfdata(G_cerrado, 'v')
wn = sqrt(num(3))
% calculamos el factor de amortiguamiento
factor_amortiguamiento = den(2) / (2 * wn)