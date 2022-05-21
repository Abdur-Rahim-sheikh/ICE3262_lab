%% NRZ-I
function [t,x] = nrz_I(n,bits)
T = length(bits);
N = length(bits)*n;
t = 0:T/N:T;
x = zeros(1,length(t));
value = 1;
for i=1:T
    
    if bits(i)==1
        value = value*-1;
    end
    x((i-1)*n+1:i*n) = value;
end
end