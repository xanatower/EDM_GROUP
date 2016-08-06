x = -2:.05:2;
y = -2:.05:2;
[xx,yy] = meshgrid(x,y);
size(xx);
size(yy);



zz = xx.^2 + 2*yy.^2;
figure(1);
surfl(xx,yy,zz);
xlabel('x');
ylabel('y');
zlabel('Function f(x,y)');
grid on;

figure(2);
contour(xx,yy,zz,20);
xlabel('x');
ylabel('y');

fxx = 2*xx; fyy = 4*yy;
figure(3); quiver(xx,yy,fxx,fyy);


xnew = -2:.25:2;
ynew = xnew;
[xxnew, yynew] = meshgrid(xnew,ynew);
fxxnew = 2*xxnew;
fyynew = 4*yynew;
figure(3);
quiver(xxnew,yynew,fxxnew,fyynew);

figure(2);
hold on;
quiver(xxnew,yynew,fxxnew,fyynew);

Txx=2*yynew; Tyy=-1*xxnew;
figure(4);
contour(xx,yy,zz,20);
hold on
quiver(xxnew,yynew,Txx,Tyy);
xlabel('x');
xlabel('y');
