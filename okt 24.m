clear
syms t
x(t)=t* cos(t)
y(t)= t* sin(t)
z(t) =t;
fplot3(x, y, z, [0 12*pi]);
axis equal
