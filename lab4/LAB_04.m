clc; clear; close all;
options = odeset('RelTol', 1e-8, 'AbsTol', 1e-10);

tspan = [0 50];
x0 = [9; 8; 27]; % x0, y0, z0
[t, x] = ode45(@(t, x)ode1(t, x), tspan, x0, options);

plot3(x(:, 1), x(:, 2), x(:, 3));
grid minor
xlabel("x")
ylabel("y")
zlabel("z")
legend("f(x,y)")
title("Zadanie 2g")

function dxdt = ode1(t, x)
    sigma = 10;
    r = 28;
    b = 8/3;

    dxdt = zeros(3, 1);
    dxdt(1) = sigma * x(2) - sigma * x(1);
    dxdt(2) = -x(1) .* x(3) + r .* x(1) - x(2);
    dxdt(3) = x(1) .* x(2) - b .* x(3);
end
