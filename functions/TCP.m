function result = TCP(A)
    [m,n] = size(A);
    if m==4 && n==4
        result = A(1:4,4:4);
    else
        disp("Input invalida")
    end
end