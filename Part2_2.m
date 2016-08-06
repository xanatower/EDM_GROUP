XC=0;YC=0;ZC=0;XR=1;YR=1;ZR=2;N=30;
[xx,yy,zz] = ellipsoid(XC,YC,ZC,XR,YR,ZR,N);
figure(10);
surfl(xx,yy,zz);
xlabel('x'); ylabel('y'); zlabel('z');
grid on;
axis([-2 2 -2 2 -2 2]);%re-align the axis of x and y


 
 
 
