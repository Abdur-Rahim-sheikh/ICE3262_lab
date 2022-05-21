amp_carrier = 1;
amp_message = 1;
frequency_carrier = 5;
frequency_message = 1;

T = 10;
t = 0:0.001:T;

message = amp_message.*sin(2*pi*frequency_message*t);
subplot(3, 1, 1);
plot(t, message);

title('Message Signal');
carrier = amp_carrier.*sin(2*pi*frequency_carrier*t);
subplot(3, 1, 2);
plot(t, carrier);
title('Carrier Signal');
modulated = (amp_carrier + message).*carrier;
subplot(3, 1, 3);
plot(t, modulated, 'r');
title('Modulated Signal');

