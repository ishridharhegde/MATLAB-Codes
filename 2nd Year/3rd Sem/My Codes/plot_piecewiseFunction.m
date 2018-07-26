syms x;
x=0:0.01:2*pi;
f=@(x)(x/2).*(0<=x & x<pi)+ (pi - (x/2)).*(pi<=x & x<=2*pi);
y=f(x);
y1=repmat(y,1,4);
x1=linspace(-2*pi,2*pi,length(y1));
plot(x1,y1,'r')