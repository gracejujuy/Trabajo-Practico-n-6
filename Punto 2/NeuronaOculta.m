function [y]=NeuronaOculta(x1, x2, centro)

%funcion que obtiene los resultados de la capa oculta
for n=1:4
    rj=(x1-centro(1,n)).^2+(x2-centro(2,n)).^2;
    m(n)=exp(-rj/4);
end
y = m;
end 
