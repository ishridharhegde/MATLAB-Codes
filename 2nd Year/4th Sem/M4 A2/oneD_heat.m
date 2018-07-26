function [ u] = oneD_heat( t0, tn,x0,xn,h,k,c )
t=t0:k:tn;
x=x0:h:xn;
m=length(x);
n=length(t);
a=c*k/h^2;
f=@(x)  x.*(4-x);  %  Change f according with the problem 
u=zeros(m,n);
u(:,1)=f(x);
if a> 0.5
    fprintf('The method fails')
    return
end
for  j=1:n-1
    for i=2:m-1
        u(i, j+1)=a*u(i-1,j)+(1-2*a)*u(i,j)+a*u(i+1,j);
    end
end
surf(t,x,u)
xlabel('t')
ylabel('x')
zlabel('u')
end


