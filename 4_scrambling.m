%% Scrambling
bits = input("array: ");
n = 1000;

[t,x] = B8ZS(n,bits);
subplot(2,1,1);
plot(t,x);
grid on;
axis([0,length(bits),-2,2]);
xlabel("time");
ylabel("signal");
title("B8ZS");

%% HBD3
[t,x] = HBD3(n,bits);
subplot(2,1,2);
plot(t,x);
grid on;
axis([0,length(bits),-2,2]);
xlabel("time");
ylabel("signal");
title("HBD3");
