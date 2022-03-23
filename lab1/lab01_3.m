function lab01_3
x0 = [0 1];
u = 5;
tspan = [0 10]; %mamy jedno 0 ale 1 warunek ????
[tsol,xsol]=ode45(@(t,x)ode1(t,x,u),tspan,x0);
plot(tsol,xsol)
end

function dxdt=ode1(t,x, u) %p oraz x
dxdt=zeros(2,1);
dxdt(1)=x(2)+t + u;
dxdt(2)=x(1)+x(2);
%dxdt=5
end
