clear
syms u v
R =2; r=1;
x(u,v) = (R + r * cos(v))* cos(u);
y(u,v) = (R + r*cos(v))* sin(u);
z(u,v) = r * sin(v);
fsurf(x, y, z, [0, 2*pi, 0, 2 *pi], 'y')
axis equal
u0= pi / 3; v0= pi/8;
hold on
plot3(x(u0,v0), y(u0,v0),z(u0,v0), 'r.', 'MarkerSize', 15)
cx(u) = x(u, v0);
cy(u) = y(u, v0);
cz(u) = z(u, v0);
fplot3(cx,cy,cz, [0 2*pi], 'b', 'LineWidth',3)

dx(v) = x(u0, v);
dy(v) = y(u0, v);
dz(v) = z(u0, v);
fplot3(dx,dy,dz, [0 2*pi], 'm', 'LineWidth',3)