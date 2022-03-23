function Lab01
x0 = 0;
tspan = [0 10];
[tsol,xsol]=ode45(@ode1,tspan,x0);
plot(tsol,xsol);
end

function dtdx=ode1(~,~)
%dtdx=zeros(1,1)
dtdx=5;
end