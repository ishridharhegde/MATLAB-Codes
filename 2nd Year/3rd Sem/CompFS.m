syms x 
k=3;          % Number of harmonics in FS
f = cos(x/2); % Given function
lLim=-pi;     % lower value of the interval
mLim=0;       % To be used in case of piecewise functions
uLim=pi;      % upper value of the interval
T= uLim-lLim; % Length of the interval
w = 2*pi/T;   % Frequency 

nPts=1000;    % Number of points in the interval
n = -k:k;     % Create a vector to get k harmonics

% Calculate the complex Fourier coefficient c_n
cn = (1/T)*int(f*exp(-i*n*w*x), x, lLim, uLim);
% Form the Fourier series upto k harmoics
FS = sum(cn.*exp(i*n*w*x))

numCycle=5;   % Number of cycles, the graph to be repeated
x=linspace(lLim, uLim, nPts);
y = eval(FS);
ry=repmat(y,1,numCycle);
rx=linspace(lLim*numCycle, uLim*numCycle, length(ry));
plot(rx, ry, 'r')
grid on
%clear all
hold on
g = @ (x1) cos(x1/2).*(lLim<x1 & x1<uLim);
x1=linspace(lLim, uLim, nPts);
y1=g(x1);
ry1=repmat(y1,1,numCycle);
rx1=linspace(lLim*numCycle, uLim*numCycle, length(ry1));
plot(rx1,ry1)
legend('Fourier series approximaiton','Given function');
%axis([-20 20 -10 10])

