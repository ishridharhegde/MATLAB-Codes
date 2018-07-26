function [] = NGBIF(X,Y)
n=length(X);
d=zeros(n,n);
d(:,1)=Y(:);
flag=0;
h=X(2)-X(1);
for i=2:n-1
    if X(i+1)-X(i)~=h;
        flag=1;
        break;
    end
end
if flag==1
    fprintf('Discrete values on x-axis are not properly placed\n');
else
    d(:,1)=Y;
    for j=2:n;
        for i=j:n;
            d(i,j)=d(i,j-1)-d(i-1,j-1);
        end
    end
    fprintf('Backward Difference Table:\n');
    disp(d);
    syms x;
    p=(x-X(n))/h;
    delta=d(n,:);
    poly=delta(1);
    for i=2:n
        prod=1;
        for j=1:i-1
            prod=prod*(p+(j-1))/j;
        end
        poly=poly+prod*delta(i);
    end
    fprintf('The required polynomial is :');
    disp(simplify(poly));
end
end