x=[1 2 3 4 5 6 7 8 9 10 11];
%x=pi/180*x;
y=[1.8 1.1 0.3 0.16 0.5 1.3 2.16 1.25 1.3 1.52 1.76];
h=2;
T=11;
w=2*pi/T;
N=length(y);
a0=2*mean(y);
sum1=a0/2;
for i=1:h
    sum2=0;
    sum3=0;
    for k=1:N
    a1(k)=y(k)*cos(i*w*x(k));
    b1(k)=y(k)*sin(i*w*x(k));
    sum2=sum2+a1(k);
    sum3=sum3+b1(k);
    end
    a(i)=2*sum2/N;
    b(i)=2*sum3/N;
    syms X
    sum1=sum1+a(i)*cos(i*w*X)+b(i)*sin(i*w*X);
end
f=vpa(sum1,3)
