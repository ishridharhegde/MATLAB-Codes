function [  ] = Euler_CS(x1,y1,h)
xn=1;
x=x1:h:xn;
n=length(x);
f=@(x,y) (x+y);
y(1)=y1;
for i=2:n
    y(i)=y(i-1)+h*f(x(i-1),y(i-1));
end
fprintf('App sol using Eulers method is y(%f)=%f',x(end),y(end))
plot(x,y,'b--')
u=dsolve('Dy=x+y','y(x1)=y1','x');
u=eval(u);
hold on
plot(x,u,'r--')
legend('Appr. soln. by Eulers method','Exact soln.')
end


