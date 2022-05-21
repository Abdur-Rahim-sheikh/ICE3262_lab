%% diffManchester

function [t,x] = diffManchester(n,bits)
T = length(bits);
N = length(bits)*n;
t = 0:T/N:T;
x = zeros(1,length(t));
middle = n/2;
k = 1;
for i=1:T
    if bits(i) == 1
        k = k*-1;
    end
    
    x((i-1)*n+1:i*n-middle) = -k;
    x(i*n-middle+1:i*n) = k;
    
end

end