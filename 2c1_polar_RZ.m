%% Polar RZ
clc;
clear;
bits = input("input array: ");
n = 100;
[t,x] = RZ(n,bits);
plot(t,x);
grid on;
%xticlabels(bits);
axis([0,length(bits),-2,2]);

xlabel('time');
ylabel('signal');
title('Polar Return To Zero');