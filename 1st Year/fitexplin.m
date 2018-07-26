function[]=fitexplin(x,y)
n=length(x);

S=[x;ones(1,n)];
A=S*transpose(S);

Y=log(y);
B=S*transpose(Y);

X=A\B;

fprintf('The values of the st. line cnstants are :\n');
disp(X);

X(1)=exp(X(1));

syms t;
yp=exp(X(1))+X(2)*t;
fprintf('The equation is :');
disp(yp)

t=x(1):0.001:x(n);
yp=exp(X(1))+X(2).*t;
plot(x,y,'*')
hold on
plot(x,yp)
end

