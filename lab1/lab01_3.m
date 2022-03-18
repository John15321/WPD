%w tym przykładzie dodajemy jeszcze zmienną u
%u to dodatkowe wejście
%dodajemy sterowanie, u, do pierwszego równania, mozna tez do 2

%passing extra parameters

function Lab01
x0 = [0 1]
u = 5
tspan = [0 10] %mamy jedno 0 ale 1 warunek ????
[tsol,xsol]=ode45(@(t,x)ode1(t,x,u),tspan,x0)
plot(tsol,xsol)
end

function dxdt=ode1(t,x, u) %p oraz x
dxdt=zeros(2,1)
dxdt(1)=x(2)+t + u
dxdt(2)=x(1)+x(2)
%dxdt=5
end


%sprawozdanie:
%zagadnienie cauchy'ego
%3 elementy ktore sie na nie skladają
%przepis jak rozwiazac rownianie rozniczkowe
%mozna jeszcze jendym parametrem z zewnatrz: u modyfikować
%3p rzykłady, najważniejsze kwestie
%sprawko: ma być porządnie, przyłożyć się. Tworzymy wykres żeby on nie byl
%za duzy ani za maly, 

%opisać krótko najważniejsze informacje
%sprawka trzeba wydrukować????