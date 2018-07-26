x=[1 2 3 4 5 6 7 8];
y=[-1, 8, 27, 64, 125, 216, 343 , 512];
xx=1:0.01:8;
yy=spline(x,y,xx);
plot(x,y,'o')
hold on
plot(xx,yy,'r')
xx=7.5;
yy=spline(x,y,xx);
fprintf('\n The function value f(%f)=%f \n',xx,yy);