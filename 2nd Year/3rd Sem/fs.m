syms x  real;
k=5; % Number of harmonics
f1 = x; % Function definition
f2 = -x; % Function definition
n = 1:k;
T = 2; % Period
w = 2*pi/T; % Frequency

% Evaluate Euler co-efficients
a0 = (2/T)*(int(f1, x, -1, 0)+int(f2, x, 0, 1));
an = (2/T)*(int(f1*cos(w*n*x), x, -1, 0)+int(f2*cos(w*n*x), x, 0, 1));
bn = (2/T)*(int(f1*sin(w*n*x), x, -1, 0)+int(f2*sin(w*n*x), x, 0, 1));

% Create vector containing the Fourier coefficients
V1 = [a0/2, an, bn];
V2 = [1, cos(w*n*x), sin(w*n*x)];
FS = sum(V1.*V2); % Obtain Fourier series with k harmonics
fprintf('Fourier series for the given function is \n')
disp(vpa(FS,5))
x = linspace(-1, 1, 500);
y = eval(FS);
ry = repmat(y,1,5);
rx = linspace(-5,5,length(ry));
plot(rx,ry,'r', 'Linewidth', 2);
hold on
grid on
% Plot the Fourier series approximaiton
% plot(x, y, 'r', 'Linewidth', 2)
% hold on
% grid
%clear all
g = @ (x1) x1.*(-1<=x1 & x1<0)+(-x1).*(0<=x1 & x1<=1);
y1 = g(x);
ry1 = repmat(y1,1,5);
rx1 = linspace(-5,5,length(ry1));
plot(rx1,ry1); % Plot the given function
legend('Fourier series', 'Given function', 'Location','best');

            