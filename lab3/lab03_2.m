
[x,y] = meshgrid([-5:0.1:5],[-5:0.1:5]);
V = x.^2 + y.^2
surf(x,y,V)
shading interp;
%view(2)
