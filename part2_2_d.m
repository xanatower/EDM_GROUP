 x = -2:0.5:2;
 y = x; z = x;
 [xx,yy,zz] = meshgrid(x,y,z);
 Fxx = 2*xx;
 Fyy = 2*yy;
 Fzz = 0.5*zz;
 figure(11);
 quiver3(xx,yy,zz,Fxx,Fyy,Fzz);
