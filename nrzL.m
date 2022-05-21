%% NRZ-L

function [t, x] = nrzL(n,bits)
T = length(bits);
N = length(bits)*n;
t = 0:T/N:T;
x = ones(1,length(t));
for i=1:length(bits)
    if bits(i) == 1
        x((i-1)*n+1:i*n) = -1;
    end
end
end
