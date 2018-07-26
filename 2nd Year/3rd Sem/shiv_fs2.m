syms x n;

N=2;
T=2*pi;
omega=(2*pi/T);
f2=x/2;
f3=pi-x/2;
a0=(2/T)*(int(f2,x,0,pi)+int(f3,x,pi,2*pi));

an=(2/T)*(int(f2*cos(n*omega*x),x,0,pi)+int(f3*cos(n*omega*x),x,pi,2*pi));

bn=(2/T)*(int(f2*sin(n*omega*x),x,0,pi)+int(f3*sin(n*omega*x),x,pi,2*pi));

FS=(a0/2);

for k=1:N
    a=subs(an,n,k);
    b=subs(bn,n,k);
    
    FS=FS+a*cos(k*omega*x)+b*sin(k*omega*x);
end
disp(vpa(FS,4))
x=linspace(-4*pi,4*pi,1000);

y1=eval(FS);
figure(2)

plot(x,y1,'LineWidth',2)

hold on

f=@(x) (x/2).*(0<=x & x<pi)+(pi-x/2).*(pi<=x & x<=2*pi);
x=linspace(0,2*pi,1000);
rfx=repmat(f(x),1,4);
rx=linspace(-4*pi,4*pi,length(rfx));

plot(rx,rfx,'r:','LineWidth',3)

grid on

