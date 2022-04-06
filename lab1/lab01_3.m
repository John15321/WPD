function Lab01
    % Warunek poczatkowy
    x0 = 0;
    % Plotujemy wykres od 0 do 10
    tspan = [0 10];
    % Rozwiązanie
    [tsol, xsol] = ode45(@ode1, tspan, x0);
    % Wyrysowanie wykresu
    plot(tsol, xsol)
    ylabel("x");
    xlabel("t");
    grid on;
end

function dtdx = ode1(~, ~)
    dtdx = 5;
end
