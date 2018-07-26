function [] = Euler(xo,yo,h)
xn = 3;
x = xo:h:xn;
n = length(x);
f = @ (x,y) (-2*10^(-12)*y^4);
y(1) = yo;
for i=2:n
    y(i) = y(i-1)+h*f(x(i-1),y(i-1));
end
fprintf('Approximate solution by Eulers non modified method is y(%f)=%f\n',x(end),y(end));
plot(x,y,'b-*'); 
hold on;
x = linspace(0,5,1000);

m = dsolve('Dy=-2*10^(-12)*y^4','y(0)=2000','x');
m = eval(m);
disp(m);
plot(x,m,'r');
grid on;
legend('Approximate solution by Eulers method','Exact Sloution');
end
