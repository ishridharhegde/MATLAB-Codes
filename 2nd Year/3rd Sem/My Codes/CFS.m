function[]=CFS()
syms x;
f1=x;
f2=-x;
T=2*pi;
w=2*pi/T;
k=5;
n=-k:k;
cn=(1/T)*(int(f1*exp(-i*w*n*x),x,-1,0)+int(f2*exp(-i*w*n*x),x,0,1));
CFS=sum(cn.*exp(w*n*x));
disp(vpa(CFS,5))
x=-4*pi:0.01:4*pi;
y=eval(CFS);
hold on;
plot(x,y,'m')
x1=linspace(-pi,pi,100);
g=@(x)x.*(-1<=x & x<0)+(-x).*(0<=x & x<=1);
y=g(x);
rfx=repmat(g(x1),1,3);
rx=linspace(-3*pi,3*pi,length(rfx));
plot(rx,rfx,'r')
