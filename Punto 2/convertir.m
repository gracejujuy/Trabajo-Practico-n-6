function [ cl ] = convertir( clustering )
max_cl = max(clustering);
dim_cl = size(clustering);
cl = zeros(dim_cl);
for i = 1 : dim_cl(1,2)
    for j = 1 : dim_cl(1,1)
        if clustering(j,i) == max_cl(1,i)
            cl(j,i) = 1;
        end
    end
end
end
