clear all

phi=(0:.25:2)*pi;
a=1;
I=1;

r1 = 0:.2:.8;
z1 = r1;
[rr1,pp,zz1] = meshgrid(r1,phi,z1);
xx1 = rr1.*cos(pp);
yy1 = rr1.*sin(pp);

Hxx1= I* rr1.^2/(2*pi*a^3).*(-sin(pp));
Hyy1= I* rr1.^2/(2*pi*a^3).*(cos(pp));
Hzz1 = 0 * zz1;;
figure(1);
quiver3(xx1,yy1,zz1,Hxx1,Hyy1,Hzz1,0.5);

hold on;

r2 = 1:.5:3;

z2 = r2;
[rr2,pp,zz2] = meshgrid(r2,phi,z2);
xx2 = rr2.*cos(pp);
yy2 = rr2.*sin(pp);

Hxx2= I/(2*pi.*rr2).*(-sin(pp));
Hyy2= I/(2*pi.*rr2).*(cos(pp));
Hzz2 = 0 * zz2;
quiver3(xx2,yy2,zz2,Hxx2,Hyy2,Hzz2,0.5);

grid on;
xlabel('x'); ylabel('y'); zlabel('z');
