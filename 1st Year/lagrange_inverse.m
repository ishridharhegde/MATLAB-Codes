function [] = lagrange_inverse(Y,X);
syms x;
sum=0;
n=length(Y);
for i=1:n
    lp=1;
    for j=1:n
        if i~=j
            lp=lp*(x-Y(j))/(Y(i)-Y(j));
        end
    end
    sum=sum+lp*X(i);
end
fprintf('The required polynomial is')
disp(simplify(sum));
%z=input('Enter the value of y:\n');
%z1=(subs(sum,z));
%fprintf('The value of x at y=%.2f is %.2f\n',z,(eval(z1)));
end