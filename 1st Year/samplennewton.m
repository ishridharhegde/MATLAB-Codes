function[]=samplennewton(x,y)
n=length(x);
h=x(2)-x(1);
d=zeros(n,n);
d(:,1)=y(:);
flag=0;
for i=2:n-1
    if x(i+1)-x(i)~=h
        flag=1;
        break;
    end
end

if flag==1
    fprintf('The values are not uniformly  placed');
else
    
    for i=2:n
        for j=i:n
            d(i,j)=d(i,j-1)-d(i-1,j-1);
        end
    end
    fprintf('The table is:\n');
    disp(d);
    
    syms X;
    delta=diag(d);
    poly=delta(1);
    p=(X-x(1))/h;
    
    
    for i=2:n
        prod=1;
        for j=1:i-1
            prod=prod*((p-j+1)/j);
        end
        poly=poly+prod*delta(i);
    end
    
    fprintf('The polynomial is:');
    simplify(poly)
end
end

            