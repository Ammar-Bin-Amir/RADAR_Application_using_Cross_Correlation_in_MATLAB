% Ammar Bin Amir
% 19B-004-EE
% Section 'A'

% RADAR Application using Cross Correlation in MATLAB

t = 0:100
x = cos(2*pi*0.1*t)             % Original Signal
y = cos(2*pi*0.1*t-101.6e-6)    % Time-Shifting (Delayed)
z = y + rand(1,101)             % Noise Insertion

r = xcorr(x,z)

plot(t,x,'g','Linewidth',2)
title('Original Transmitted Signal')
xlabel('t')
ylabel('x(t)')
grid

figure

plot(t,y,'b','Linewidth',2)
title('Delayed Signal')
xlabel('t')
ylabel('y(t)')
grid

figure

plot(t,z,'r','Linewidth',2)
title('Corrupted Recieved Signal')
xlabel('t')
ylabel('z(t)')
grid

figure

plot(r,'k','Linewidth',2)
title('Cross Correlation between x(t) and z(t)')