%**********************************************************************
% Punto 1b
%**********************************************************************

clear
clc
%Generamos Puntos aleatorios 
rng(10)
C1=mvnrnd([-0.5,0.5],[0.05 0;0 0.05],100);%C1 Cuadrante 1
C2=mvnrnd([0.5,0.5],[0.05 0;0 0.05],100);%C2 Cuadrante 2
C3=mvnrnd([-0.5,-0.5],[0.05 0;0 0.05],100);%C3 Cuadrante 3
C4=mvnrnd([0.5,-0.5],[0.05 0;0 0.05],100);%C4 Cuadrante 4
hold on

%Nube de Puntos Aleatorios
X = [C1;C2;C3;C4];

plot(X(:,1),X(:,2),'ok','MarkerSize',5,'MarkerFaceColor','k');
title('Puntos Aleatorios');

%*************************************************************
% Punto 1c
%*************************************************************

%Cantidad de Datos 400 en X1,X2,X3,X4
N=400;
%de acuerdo a la observacion del grafico, se identifican 4 grupos por los
%que K toma ese valor
K = 4; 
%Para dar inicio al algoritmo, de forma aleatoria seleccionamos los
%centroides
Cent=randperm(N,K)
plot(X(Cent,1),X(Cent,2),'ok','MarkerSize',5,'MarkerFaceColor','r');

%Para cada punto seleccionamos el centroide mas cercano que se almacena en
%un vector indice ind, esto a traves de la funcion knnsearch disponible en
%Matlab 2015, es decir en este nuevo vector se almacena por cada puntos el
%centroide mas cercano.

for i=1:5 % Numeros de Iteraciones del Algoritmo 


ind = kmeans(X,K,'Distance','hamming');
% Según la documentación de MATLAB , la medida de la distancia de Hamming 
%kmeans solo se puede usar con datos binarios, ya que es una medida del porcentaje
%de bits que difieren. Podría intentar mapear sus datos en una representación 
%binaria antes de usar la función.

%Luego con el Vector ind buscamos los puntos cercanos a cada centroide y lo
%pintamos de diferentes colores, eso a traves de una estructura de
%repeticion FOR, y pintamos de cada color los puntos de acuerdo a su
%cercania con el centroide
Cent
NPuntos =zeros(1,4);
mediak = 0;
DisMed = zeros(1,4);
marcas =['*','o','+','d'];
fig = figure;
hold all
for k=1:K
    indk= find(ind==k);
    NPuntos(1,k)=length(indk);
    plot(X(indk,1),X(indk,2),marcas(k),'MarkerSize',5,'MarkerFaceColor','auto');
end
plot(X(Cent,1),X(Cent,2),'ok','MarkerSize',5,'MarkerFaceColor','r');

%Ahora procederemos a recalcular los centroides
for k=1:K
    indk= find(ind==k);
    mediak = mean(X(indk,:));
    DisMed(1,k) = mediak(1);
    Cent(1,k)= knnsearch(X,mediak); 
end

end
disp('***************************************')
disp('*               Resultados            *')
disp('***************************************')
disp(strcat('Cantidad de Grupos: ',num2str(K)))
disp(strcat('Cantidad de elementos por Grupo: ',num2str(K)))
disp(strcat('Grupo 1: ',num2str(NPuntos(1,1))))
disp(strcat('Grupo 2: ',num2str(NPuntos(1,2))))
disp(strcat('Grupo 3: ',num2str(NPuntos(1,3))))
disp(strcat('Grupo 4: ',num2str(NPuntos(1,4))))
disp('Posicion en el orden de los centro: ')
disp(strcat('Centro 1 Punto:',num2str(Cent(1,1))))
disp(strcat('Centro 2 Punto: ',num2str(Cent(1,2))))
disp(strcat('Centro 3 Punto: ',num2str(Cent(1,3))))
disp(strcat('Centro 4 Punto: ',num2str(Cent(1,4))))
disp('Distancia media de cada grupo')
disp(strcat('Grupo 1: ',num2str(DisMed(1,1))))
disp(strcat('Grupo 2: ',num2str(DisMed(1,2))))
disp(strcat('Grupo 3: ',num2str(DisMed(1,3))))
disp(strcat('Grupo 4: ',num2str(DisMed(1,4))))
disp('***************************************')




%*************************************************************
% Punto 1d
%*************************************************************

[IDX, C, SUMD, D] =kmeans(X,K)
disp('IDX : Puntos en la matriz de datos')
IDX
disp('C : Ubicación del centroide')
C
disp('SUMD : Devuelve las sumas dentro del clúster de distancias punto a centroide en el vector')
SUMD
disp('D : devuelve las distancias desde cada punto a cada centroide en la matriz')
D

%*************************************************************
% Punto 1e
%*************************************************************
