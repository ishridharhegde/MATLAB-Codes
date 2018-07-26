function[]=sim38(f,a,b,n)
h=(b-a)/n;
I=f(a)+f(b);

for i=1:n-1
    x=a+i*h;
    if mod(i,3)==0
        I=I+2*f(x);
    else
        I=I+3*f(x);
    end
end

I=((3*h)/8)*I;

fprintf('Simpson 3/8  integration is :\n');
disp(I);
end
