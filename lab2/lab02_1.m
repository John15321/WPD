function Lab02_1
s=10;
b=8/3;
r=28;

x0=0;
y0=0.5;
z0=1;
zerowe=[0,0.5,1];
tspan = [0 100];
[tsol,xsol]=ode45(@(t,x)ode1(t,x),tspan,zerowe);
plot(tsol,xsol);
end

function dxdt=ode1(t,x)
s=10;
b=8/3;
r=28;
dxdt = zeros(2,1);
dxdt(1) = s*x(2)-s*x(1);
dxdt(2) = -x(3)*x(1) + r*x(1) -x(2);
dxdt(3) = x(1)*x(2) -b*x(3);
end