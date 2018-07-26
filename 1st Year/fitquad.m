function[]=fitquad(x,y)
n=length(x);

%Finding matrix A
S=[ x.*x ;x; ones(1,n) ];
A=S*transpose(S);

%Finding B
B=S*transpose(y);

X=A\B;
fprintf('The co-efficient of st. line is \n');
disp(X)

%Display equation

syms t;
yp=X(1)*t.^2+X(2)*t+X(3);
fprintf('The equation is :\n');
disp(yp)

yp=X(1)*x.^2+X(2)*x+X(3);
plot(x,y,'*');
hold on
plot(x,yp,'r');
end
