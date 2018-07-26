syms x
f =cos(x/2);
T = 2*pi;
w = 2*pi/T;
k = 5;
n = -k:k;
cn =((1/T)*int(f*exp(-i*w*n*x),x,-pi,pi));
CFS = sum(cn.*exp(i*w*n*x));
disp(vpa(CFS,4))
x = -3*pi:0.01:3*pi;
y = eval(CFS);
hold on
plot(x,y,'m')
x1 =linspace(-pi,pi,500);
g = @(x1)cos(x1/2).*(-pi<=x1 & x1<=pi);
rfx = repmat(g(x1),1,3);
rx = linspace(-3*pi,3*pi,length(rfx));
plot(rx,rfx,'r')