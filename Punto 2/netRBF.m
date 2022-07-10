function Y = netRBF(A)
%se carga la matriz de entradas
P=[1 1 2 2 2 3 1 1 1 2 2 2 3 5 5 6 6 6 7 5 5 6 6 7 7;
   1 2 1 2 3 2 5 6 7 5 6 7 6 1 2 1 2 3 2 5 6 6 7 5 6];

%se carga la matriz de salidas
T=[1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1; 
   0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0]; 

%se inicializan los centros
C=[2 2 6 6;
   2 6 2 6];

%se inicializan los pesos
W=rand(3,4)-0.5;
gamma=0.3;

%aprendizaje supervisado para 2000 epocas
for j=1:2000
    
    for i=1:25  %son 25 iteraciones para el campo muestral seleccionado
        X(i,:)=NeuronaOculta(P(1,i),P(2,i),C);
        V=W*X(i,:)';
        
        error=T(:,i)-V;
        dW=2*gamma*(error*X(i,:));
        W=W+dW; %se actualizan los pesos
    end
end
for i=1:3
    X(i,:)=NeuronaOculta(A(1,i),A(2,i),C);
    V=W*X(i,:)';
    Y(i,:)=V;
end
Y=hardlim(Y);
    