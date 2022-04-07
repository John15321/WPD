function lab02_02
 tspan = [0:0.01:100]
 x0 =[0 0.5 1];
 x1 = [0 5 2] ;
  
 options = odeset('RelTol',1e-8,'AbsTol',1e-10);

 [tsol,xsol] = ode45(@(t,x) ode1(t,x),tspan,x0);
 [tsol2,ysol] = ode45(@(t,x) ode1(t,x),tspan,x1);
 deltax = xsol(:,1) - ysol(:,1);
 deltay = xsol(:,2) - ysol(:,2);
 deltaz = xsol(:,3) - ysol(:,3);

 figure(1)
 subplot(4,1,1)
 plot(tsol, xsol(:,1));
 hold on;
 plot(tsol2, xsol(:,2));
 hold on;
 plot(tsol, xsol(:,3));
 title("wykresy x, y, z dla warunku początkowego [0 0.5 1]", 'FontSize', 20)
 xlabel("t");
 ylabel("x, y, z");

 subplot(4,1,2)
 plot(tsol, deltax);
 title("różnica osi x dla warunku początkowego [0 5 2]", 'FontSize', 20)
 xlabel("t");
 ylabel("x - x2");

 subplot(4,1,3)
 plot(tsol, deltay);
 title("różnica osi y dla warunku początkowego [0 5 2]", 'FontSize', 20)
 xlabel("t");
 ylabel("y - y2");

 subplot(4,1,4)
 plot(tsol, deltaz);
 title("różnica osi z dla warunku początkowego [0 5 2]", 'FontSize', 20)
 xlabel("t");
 ylabel("z - z2");
end

 function dxdt = ode1(t,x)
    s=10;
    b=8/3;
    r=28;

    dxdt = zeros(3,1);
    dxdt(1) = s*x(2) - s* x(1);
    dxdt(2) = -x(1) * x(3) + r* x(1) - x(2);
    dxdt(3) = x(1) * x(2) - b* x(3);
end

