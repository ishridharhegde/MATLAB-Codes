function[]=NewtonFoward(x,y)
f=1;
n=length(x);
d=zeros(n,n);
h=x(2)-x(1);

for i=2:(n-1)
    if x(i+1)-x(i)~=h
        f=0;
        break;
    end
end

if f==0
    fprintf('The entries are not continuous on the axis..');
else
     %forward difference table
     d(:,1)=y;
     for j=2:n
         for i=j:n
             d(i,j)=d(i,j-1)-d(i-1,j-1);
         end
     end
     fprintf('Forward difference table is: \n');
     disp(d);
     syms X;
     p=(X-x(1))/h;
     delta=diag(d);
     poly=delta(1);
     
     for i=2:n
         prod=1;
         for j=1:(i-1)
             prod=prod*(p-(j-1))/j;
         end
         poly=poly+prod*delta(i);
     end
     fprintf('The polynomial you were looking for is:\n');
     simplify(poly)
end
end



