

clear all

syms x pi n;

N=10;

T=2;
omega=(2*pi/T);

f1=2*(1+x);
f2=0;


a0=(2/T)*(int(f1,x,-1,0)+int(f2,x,0,1));

an=(2/T)*(int(f1*cos(n*omega*x),x,-1,0)+int(f2*cos(n*omega*x),x,0,1));
bn=(2/T)*(int(f1*sin(n*omega*x),x,-1,0)+int(f2*sin(n*omega*x),x,0,1));


sum=(a0/2);

for k=1:N
    a=subs(an,n,k);
    b=subs(bn,n,k);
    
    sum=sum+a*cos(k*omega*x)+b*sin(k*omega*x);
end
disp(sum)

x=linspace(-3,3,1000);

y1=eval(sum);

plot(x,y1,'r','LineWidth',2)
hold on

clear all 
f=@(x) (2*(1+x)).*(-1<=x & x<0)+(0).*(0<=x & x<=1);
x=linspace(-1,1,1000);

rfx=repmat(f(x),1,3);

rx=linspace(-3,3,length(rfx));

plot(rx,rfx,'b:','LineWidth',2)

