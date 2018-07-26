function[]=trape(f,a,b,n)
h=(b-a)/n;
I=f(a)+f(b);

for i=1:n-1
    x=a+i*h;
    I=I+2*f(x);
end

I=(h/2)*I;
fprintf('The integration of the given function is :\n');
disp(I);
end