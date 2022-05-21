%% MLT-3
state = [1,0,-1,0];
n = 1000;
bits = input("give array: ");
T = length(bits);
N = length(bits)*n;
t = 0:T/N:T;
x = zeros(1,length(t));
ind = 3;
for i=1:T
    if bits(i) == 1
        ind = mod(ind+1,4);
    end
    x((i-1)*n+1:i*n) = state(ind+1);
end
plot(t,x);
grid on;
axis([0,length(bits),-2,2]);
xlabel("time");
ylabel("signal");
title("MLT-3");

    