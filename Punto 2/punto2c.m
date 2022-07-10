%se carga la matriz de entradas con los valores de rederencia para los
%puntos identificados en el plano.
P=[1 1 2 2 2 3 5 5 6 6 7 7 1 1 1 2 2 2 3 5 5 6 6 6 7;
   1 2 1 2 3 2 5 6 6 7 5 6 5 6 7 5 6 7 6 1 2 1 2 3 2];

%se carga la matriz de salidas deseadas que se corresponden con la matriz
%de entrada A
T=[1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0;
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1]; 


%RBF con 3 neuronas
RBF3neu=newrb(P,T,0,1,3); 

%RBF con 4 neuronas
RBF4neu=newrb(P,T,0,1,4);


%RBF con x neuronas
RBFxneu=newrb(P,T,0,1); 

