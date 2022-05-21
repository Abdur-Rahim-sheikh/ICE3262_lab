%% Polar NRZ-L
clc;
clear;
bits = input("NRZ bits: ");
n = 100;
subplot(2,1,1);
[t,x]= nrzL(n,bits);
plot(t,x);
axis([0,10,-2,2]);
grid on;
xlabel("time");
ylabel('signal');
title('NRZ-L');

%% Polar NRZ-I
[t,x] = nrz_I(n,bits);
subplot(2,1,2);
plot(t,x);
xlabel("time");
ylabel('signal');
title('NRZ-I');
axis([0,10,-2,2]);
