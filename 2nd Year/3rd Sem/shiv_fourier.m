clear all
syms x n;
N=2;
T=2*pi;
omega=(2*pi/T);
f2=x;
a0=(2/T)*(int(f2,0,2*pi));
an=(2/T)*(int(f2*cos(n*omega*x),0,2*pi));
bn=(2/T)*(int(f2*sin(n*omega*x),0,2*pi));
sum=(a0/2);
for k=1:N
    a=subs(an,n,k);
    b=subs(bn,n,k);   
    sum=sum+a*cos(k*omega*x)+b*sin(k*omega*x);
end
x=linspace(-3*pi,3*pi,1000);
y1=eval(sum);
figure
plot(x,y1,'LineWidth',2)
 hold on
f=@(x) x;
x=linspace(-3*pi,3*pi,1000);
 y2=f(x);
 plot(x,y2,'r','LineWidth',2)
 grid on












% Create One more file name as fun.m
% 
% 
% Function [y]=fun(x)
% 
% x=rem(x,4);
% x=abs(x);
% 
% Y=4.*(0<x & x<3)+0.*(3<x & x<5);


