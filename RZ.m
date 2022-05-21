%% RZ
function [t,x] = RZ(n,bits)
T = length(bits);
N = length(bits)*n;
t = 0:T/N:T;
x = zeros(1,length(t));

for i=1:T
    if bits(i)==0
        value = -1;
    else
        value = 1;
    end

    x((i-1)*n+1:i*n-n/2) = value;
end
end