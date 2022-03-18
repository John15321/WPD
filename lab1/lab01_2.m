function Lab01
x0 = [0 1]
tspan = [0 10] %mamy jedno 0 ale 1 warunek ????
[tsol,xsol]=ode45(@ode1,tspan,x0)
plot(tsol,xsol)
end

function dxdt=ode1(t,x) %p oraz x
dxdt=zeros(2,1)
dxdt(1)=x(2)+t
dxdt(2)=x(1)+x(2)
%dxdt=5
end
