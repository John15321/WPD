function dxdt=ode1(t,x)
theta=10;
r=28;
b=8/3;

dxdt=zeros(3,1);
dxdt(1) = thetax(2) - thetax(1);
dxdt(2) = -x(1).x(3) + r.x(1) - x(2);
dxdt(3) = x(1).x(2) - b.x(3);
end 