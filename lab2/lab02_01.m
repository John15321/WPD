function lab02_02

    tspan = [0 10000];
    x0 = [0 0.5 1];
    x1 = [0 5 2];
    x2 = [0 3 10];
    x3 = [0 3 0.2];
    s=10;
    b=8/3;
    r=28;

    options = odeset('RelTol',1e-8,'AbsTol',1e-10);

    %[tsol, xsol] = ode45(@(t,x) ode1(t,x), tspan, x0, options);
    [tsol, xsol] = ode45(@(t,x) ode1(t,x), tspan, x0);

    %plot3(xsol(:,1), xsol(:,2), xsol(:,3));
    plot3(xsol(:,1), xsol(:,2), xsol(:,3));
    %hold on;

    %[tsol, xsol] = ode45(@(t,x) ode1(t,x), tspan, x1);
    %plot3(xsol(:,1), xsol(:,2), xsol(:,3));
    %hold on;

    %[tsol, xsol] = ode45(@(t,x) ode1(t,x), tspan, x2);
    %plot3(xsol(:,1), xsol(:,2), xsol(:,3));
    %hold on;

%[tsol, xsol] = ode45(@(t,x) ode1(t,x), tspan, x3);
%plot3(xsol(:,1), xsol(:,2), xsol(:,3));
title("z = f(x,y)")
xlabel("x");
ylabel("y");
zlabel("z");
grid on;
end

% funkcja 
function dxdt = ode1(t,x)
    s=10;
    b=8/3;
    r=28;

    dxdt = zeros(3,1);
    dxdt(1) = s*x(2) - s*x(1);
    dxdt(2) = -x(1) * x(3) + r* x(1) - x(2);
    dxdt(3) = x(1) * x(2) - b* x(3);
end