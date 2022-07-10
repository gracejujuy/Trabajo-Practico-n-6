%salida de la RBF para 3 neuronas
clustering_RBF3=sim(RBF3neu,B) 

%salida de la RBF para 4 neuronas
clustering_RBF4=sim(RBF4neu,B) 

%salida de la RBF para 25 neuronas
clustering_RBFx=sim(RBFxneu,B) 

%se convierte la salida clustering_RBF3 en una matriz de "1" o "0"
cl_RBF3 = convertir(clustering_RBF3)

%se convierte la salida clustering_RBF4 en una matriz de "1" o "0"
cl_RBF4 = convertir(clustering_RBF4)

%se convierte la salida clustering_RBFx en una matriz de "1" o "0"
cl_RBFx = convertir(clustering_RBFx)

%************************************************************************%
%se grafica los resultados obtenidos sobre el mismo espacio de datos%
%************************************************************************%

plot(P(1,1:12),P(2,1:12),'blue.','MarkerSize',14)
hold on
plot(P(1,13:19),P(2,13:19),'red.','MarkerSize',14)
plot(P(1,20:end),P(2,20:end),'green.','MarkerSize',14)

plot(B(1,cl_RBF3(1,:)==1),B(2,cl_RBF3(1,:)==1),'bluex','MarkerSize',14)
plot(B(1,cl_RBF3(2,:)==1),B(2,cl_RBF3(2,:)==1),'redx','MarkerSize',14)
plot(B(1,cl_RBF3(3,:)==1),B(2,cl_RBF3(3,:)==1),'greenx','MarkerSize',14)

xlim([0 8])
ylim([0 8])
title('Resultado red RBF con 3 neuronas')
grid
hold off
%************************************************************************%

plot(P(1,1:12),P(2,1:12),'blue.','MarkerSize',14)
hold on
plot(P(1,13:19),P(2,13:19),'red.','MarkerSize',14)
plot(P(1,20:end),P(2,20:end),'green.','MarkerSize',14)

plot(B(1,cl_RBF4(1,:)==1),B(2,cl_RBF4(1,:)==1),'bluex','MarkerSize',14)
plot(B(1,cl_RBF4(2,:)==1),B(2,cl_RBF4(2,:)==1),'redx','MarkerSize',14)
plot(B(1,cl_RBF4(3,:)==1),B(2,cl_RBF4(3,:)==1),'greenx','MarkerSize',14)

xlim([0 8])
ylim([0 8])
title('Resultado red RBF con 4 neuronas')
grid
hold off
%************************************************************************%

plot(P(1,1:12),P(2,1:12),'blue.','MarkerSize',14)
hold on
plot(P(1,13:19),P(2,13:19),'red.','MarkerSize',14)
plot(P(1,20:end),P(2,20:end),'green.','MarkerSize',14)

plot(B(1,cl_RBFx(1,:)==1),B(2,cl_RBFx(1,:)==1),'bluex','MarkerSize',14)
plot(B(1,cl_RBFx(2,:)==1),B(2,cl_RBFx(2,:)==1),'redx','MarkerSize',14)
plot(B(1,cl_RBFx(3,:)==1),B(2,cl_RBFx(3,:)==1),'greenx','MarkerSize',14)

xlim([0 8])
ylim([0 8])
title('Resultado red RBF con N neuronas')
grid
hold off
%************************************************************************%