 x=[1 2 3 4 5 6 7 8 9 10 11];
%x=pi/180*x;
y=[1.8 1.1 0.3 0.16 0.5 1.3 2.16 1.25 1.3 1.52 1.76];
syms t
T=11;
w=2*pi/T;
h=3; % number of hormonics
N=length(y);
a=zeros(1,h);
b=zeros(1,h);
a0=2*mean(y);
HS=a0/2;
for i=1:h
    a(i)=2*mean(y.*cos(i*w*x));
    b(i)=2*mean(y.*sin(i*w*x));
    HS=HS+a(i)*cos(i*w*t)+b(i)*sin(i*w*t);
end 
  f=vpa(HS,3)
  plot(x,y,'*')
  hold on
  t=linspace(x(1),x(end),1000);
  y1=eval(HS);
  plot(t,y1,'r')