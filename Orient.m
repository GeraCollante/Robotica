function result = Orient(A)
    [m,n] = size(A)
    if m==4 && n==4
        result = A(1:3,1:3)
    else
        disp("Input invalida")
    end
end