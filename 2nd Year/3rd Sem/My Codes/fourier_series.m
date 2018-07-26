function[]=fourier_series()
syms x;
T=2;
w=2*pi/T;
k=2;
n=-k:k;
f1=x;
f2=-x;
a0=(2/T)*(int(f1,x,-1,0)+int(f2,x,0,1));
an=(2/T)*(int(f1*cos(n*w*x),x,-1,0)+int(f2*cos(n*w*x),x,0,1));
bn=(2/T)*(int(f1*sin(n*w*x),x,-1,0)+int(f2*sin(n*w*x),x,0,1));
v1=[a0/2,an,bn];
v2=[1,cos(w*n*x),sin(w*n*x)];
FS=sum(v1.*v2);
fprintf('The fourier series is:\n');
disp(vpa(FS,5))
x=linspace(-1,1,500);
y=eval(FS);
y1=repmat(y,1,4);
x1=linspace(-4,4,length(y1));
figure
plot(x1,y1,'r','Linewidth',2)
hold on
grid on
g=@(x2)f1.*(-1<x2 & x2<0)+f2.*(0<x2 & x2<1);
y2=g(x);
ry2=repmat(y2,1,4);
rx2=linspace(-4,4,length(ry2));
plot(rx2,ry2,'Linewidth',2)

