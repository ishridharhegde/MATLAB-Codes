function[]=sim13(f,a,b,n)
h=(b-a)/n;
I=f(a)+f(b);

for i=1:n-1
    x=a+i*h;
    if mod(i,2)==0
        I=I+2*f(x);
    else
        I=I+4*f(x);
    end
end

I=(h/3)*I;

fprintf('The 1/3 integration is :');
disp(I);
end
