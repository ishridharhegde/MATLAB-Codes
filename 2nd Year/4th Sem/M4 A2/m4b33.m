function [x,y]=m4b33(x0,y0,xn,n)
h=(xn-x0)/n;
f=@(x,y) 3-5*y;
x=x0:h:xn;
y=zeros(1,n);
maxit=10;
s(:,:)=zeros(n,maxit);
y(1)=y0;
for i=1:3
    K1=h*f(x(i),y(i));
    K2=h*f(x(i)+0.5*h,y(i)+0.5*K1);
    K3=h*f(x(i)+0.5*h,y(i)+0.5*K2);
    K4=h*f(x(i)+h,y(i)+K3);
    y(i+1)=y(i)+(1/6)*(K1+2*K2+2*K3+K4);
end
%predictor formula

for i=4:n
    y(i+1)=y(i)+(h/24)*(55*f(x(i),y(i))-59*f(x(i-1),y(i-1))+37*f(x(i-2),y(i-2))-9*f(x(i-3),y(i-3)));
     s(i+1,1)=y(i+1);
%corrector formula
    for j=1:maxit
        s(i+1,j+1)=y(i)+(h/24)*(f(x(i-2),y(i-2))-5*f(x(i-1),y(i-1))+19*f(x(i),y(i))+9*f(x(i+1),s(i+1,j)));
        if (s(i+1,j+1)-s(i+1,j))<10^(-6)
            y(i+1)=s(i+1,j+1);
            break
        end
    end
end
y
plot(x,y,'*')
hold on
u=dsolve('Dy=3-5*y','y(0)=0','x');
fprintf('The exact solution for the given differential equation is \n');
disp(u)
u=eval(u);
hold on
plot(x,u,'r')
end 