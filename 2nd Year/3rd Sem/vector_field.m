% a=3;n=3;
% X=linspace(-a,a,n);
% y=linspace(-a,a,n);
% z=linspace(-a,a,n);
x=-3:10:3;
Y=-3:10:3;
Z=-3:10:3;
[X,Y,Z]=meshgrid(x,y,z);
f1=exp(X).*sin(Y.*Z);f2=Z.*exp(X).*cos(Y.*Z);f3=Y.*exp(Z).*cos(Y.*Z);
quiver3(X,Y,Z,f1,f2,f3);
% syms t a
% f=sin(a*t);
% LT=laplace(f)
% ILT=ilaplace(LT)
% syms x
% f=x*(heaviside(x+1)-heaviside(x))-x*(heaviside(x)-heaviside(x-1));
% fourier(f)