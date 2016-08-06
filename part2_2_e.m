clear all
XC=0;YC=0;ZC=0;XR=1;YR=1;ZR=2;N=50;
[xx,yy,zz] = ellipsoid(XC,YC,ZC,XR,YR,ZR,N);
 Fxx = 2*xx;
 Fyy = 2*yy;
 Fzz = 0.5*zz;
 figure(12);
 quiver3(xx(1:5:end,1:5:end),yy(1:5:end,1:5:end),
 zz(1:5:end,1:5:end),Fxx(1:5:end,1:5:end),
 Fyy(1:5:end,1:5:end),Fzz(1:5:end,1:5:end));
 
 axis([-2 2 -2 2 -2 2]);
 hold on;
 surfl(xx,yy,zz);
