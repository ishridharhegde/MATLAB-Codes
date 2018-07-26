syms beta
betas=[10;15;25]
for i=0:2
    beta=betas(i+1);
    f = @(t,x) [14*(x(2)-x(1));x(1)*(beta-x(3))-x(2);x(1)*x(2)-(9/4)*x(3)];
    [t,xa]=ode45(f,[0 20],[2 2 2]);
    %f1=figure;
    subplot(3,1,i+1)
    plot(t,xa(:,1))
    title('x(t)')
    xlabel('t'),ylabel('x')
    
    f2=figure;
    subplot(3,2,2*(i-1)+2);
    plot(xa(:,1),xa(:,3));
    title('x versus z graph')
    xlabel('x'),ylabel('z')
    
end
