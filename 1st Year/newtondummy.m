function[]=newtondummy(x,y)
n=length(x);
d=zeros(n,n);
h=x(2)-x(1);
flag=0;

for i=2:(n-1)
    if x(i+1)-x(i)~=h
        flag=1;
        break;
    end
end

if flag==1
    fprintf('The discrete values on the x-axis are not equally spaced\n');
else
    d(:,1)=y;
    for i=2:n
        for j=i:n
            d(i,j)=d(i,j-1)-d(i-1,j-1);
        end
    end
    syms X;
    p=(X-x(1))/h;
    delta=diag(d);
    poly=delta(1);
    for i=2:n
        prod=1;
        for j=1:i-1
            prod=prod*(p-(j-1))/j;
        end
        poly=poly+prod*delta(i);
    end
    fprintf('The polynomial is :\n');
    simplify(poly)
end
end
