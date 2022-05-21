%% manchester
function [t,x] = manchester(n,bits)
    T = length(bits);
    N = n*length(bits);
    t = 0:T/N:T;
    x = zeros(1, length(t));
    half = n/2;

    for i=1:T
        if bits(i) == 1
            k = 1;
        else
            k = -1;
        end
            x((i-1)*n+1:i*n-half) = -k;
            x(i*n-half+1:i*n) = k;
    end

end