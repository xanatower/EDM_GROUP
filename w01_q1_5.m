clear all
theta = (0:.25:1)*pi;
phi=(0:.25:2)*pi;
eps_0=8.854187e-15;
eps_r=1;
a=1;

r1 = 0:.2:.8;
[tt,pp,rr1] = meshgrid(theta,phi,r1);
xx1 = rr1.*sin(tt).*cos(pp);
yy1 = rr1.*sin(tt).*sin(pp);
zz1 = rr1.*cos(tt);

Exx1= (rr1.^2/(4*eps_0*eps_r)).*sin(tt).*cos(pp);
Eyy1 = (rr1.^2/(4*eps_0*eps_r)).*sin(tt).*sin(pp);
Ezz1 = (rr1.^2/(4*eps_0*eps_r)).*cos(tt);
figure(1);
quiver3(xx1,yy1,zz1,Exx1,Eyy1,Ezz1,0.5);

hold on;

r2 = 1:.5:3;
[tt,pp,rr2] = meshgrid(theta,phi,r2);
xx2 = rr2.*sin(tt).*cos(pp);
yy2 = rr2.*sin(tt).*sin(pp);
zz2 = rr2.*cos(tt);

Exx2= ((a^4)/(4*eps_0*rr2.^2)).*sin(tt).*cos(pp);
Eyy2 = ((a^4)/(4*eps_0*rr2.^2)).*sin(tt).*sin(pp);
Ezz2 = ((a^4)/(4*eps_0*rr2.^2)).*cos(tt);
quiver3(xx2,yy2,zz2,Exx2,Eyy2,Ezz2,0.5);

grid on;
xlabel('x'); ylabel('y'); zlabel('z');
