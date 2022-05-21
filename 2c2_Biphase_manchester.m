%% Polar Biphase Manchaster

bits = input("array: ");
n = 100;
[t,x] = manchester(n,bits);
subplot(2,1,1);
plot(t,x);
grid on;
axis([0,length(bits),-2,2]);
xlabel('time');
ylabel('signal');
title('Polar Biphase Manchester');

%% Differential Manchester
[t,x] = diffManchester(n,bits);
subplot(2,1,2);

plot(t,x);
grid on;
axis([0,length(bits),-2,2]);
xlabel('time');
ylabel('signal');
title('Polar Biphase Differential Manchester');