%% Unipolar NRZ
clc;
clear;
bits = input('give array: ');

n = 100;
T = length(bits);
N = n*length(bits);

t = 0:T/N:T;
x = zeros(1,length (t));

for i=1:length(bits)
    if bits(i) == 1
        x((i-1)*n+1:i*n) = 1;
    end
end
    
plot(t,x,'LineWidth',3);
axis([0,5,-2,2]);

counter = 0;
