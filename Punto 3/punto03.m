% Creamos las variables de entrada
x=linspace(0,2*pi,20);
y=linspace(0,2*pi,20);
z=linspace(-1,1,20);
valor_entrada=[x;y;z];
% Definimos la variable de salida
valor_salida=sin(x)+cos(y)+z;
% Creamos la red
net = newrbe (valor_entrada, valor_salida);
ejemplo=net(valor_entrada);
hold on
plot(valor_salida,'red')
plot(ejemplo,'*')
grid