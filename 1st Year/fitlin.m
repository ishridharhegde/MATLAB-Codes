function[]=fitlin(x,y)
n=length(x);

%Finding matrix A
S=[x;ones(1,n)];
A=S*transpose(S);

%Finding B
B=S*transpose(y);

X=A\B;
fprintf('The co-efficient of st. line is \n');
disp(X)

%Display equation

syms t;
yp=X(1)*t+X(2);
fprintf('The equation is :\n');
disp(yp)

yp=X(1).*x+X(2);
plot(x,y,'*');
hold on
plot(x,yp,'r');
end
