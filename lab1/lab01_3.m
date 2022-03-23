function lab01_3
    % Warunki początkowe
    x0 = [0 1];
    % Sterowanie
    u = 5;
    % Plotujemy wykres od 0 do 10
    tspan = [0 10];
    % Rozwiązanie
    [tsol, xsol] = ode45(@(t, x)ode1(t, x, u), tspan, x0);
    % Wyrysowanie wykresu
    plot(tsol, xsol)
    ylabel("x");
    xlabel("t");
    legend("x_{1}", "x_{2}");
    title("Wykres wartości x_{1} i x_{2} od parametru t")
    grid on;
end

function dxdt = ode1(t, x, u)
    dxdt = zeros(2, 1);
    dxdt(1) = x(2) + t + u;
    dxdt(2) = x(1) + x(2);
end
