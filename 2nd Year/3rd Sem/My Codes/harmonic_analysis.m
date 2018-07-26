function[f]=harmonic_analysis(x,y,T,H)
syms t;
n=length(x);
w=2*pi/T;
a=zeros(1,H);
b=zeros(1,H);
a0=2*mean(y);
f=a0/2;
for  i=1:H
    a(i)=(1/T)*(mean(y.*cos(i*w*x)));
    b(i)=(1/T)*(mean(y.*sin(i*w*x)));
    f=f+a(i)*cos(i*w*x)+b(i)*sin(i*w*x);
end
f=vpa(f,4);
plot(x,y,'*')
hold on
t=x(1):pi/100:x(n);
z=eval(f);
plot(t,z,'g')
hold off
grid on