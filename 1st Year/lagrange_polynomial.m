function [] = lagrange_polynomial(X,Y);
syms x;
sum=0;
n=length(X);
for i=1:n
    lp=1;
    for j=1:n
        if i~=j
            lp=lp*(x-X(j))/(X(i)-X(j));
        end
    end
    sum=sum+lp*Y(i);
end
fprintf('The required polynomial is')
disp(simplify(sum));
z=input('Enter the value of x:\n');
z1=(subs(sum,z));
fprintf('The value of y at x=%.2f is %.2f\n',z,(eval(z1)));
end