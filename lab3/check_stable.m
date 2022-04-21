syms x;
V=x^2;
Vdot=-2*x^2;
xdot=-x;
is_stable(V, Vdot, x)

dot = diff(V) * xdot

