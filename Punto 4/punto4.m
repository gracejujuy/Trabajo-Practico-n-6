%IMPORTANTE
% Importar F1,F2,F3 y F4 del archivo Patrones_fallas.mat
hold on
plot(F1,'dg')
plot(F2,'sb')
plot(F3,'^r')
plot(F4,'om')
hold off

SF1=ones(size(F1));
SF2=zeros(size(F2));
SF3=zeros(size(F3));
SF4=zeros(size(F4));

%Creamos una Matriz de 1x100 con los datos de entrada los cuales son
%F1,F2,F3 y F4 y 
F = [F1 F2 F3 F4];
hold on


%Salida para entrenar
S = [SF1 SF2 SF3 SF4];

%Ejecutar nntool

