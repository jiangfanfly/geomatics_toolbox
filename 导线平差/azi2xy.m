function[x2,y2]=azi2xy(x1,y1,dis,azi)
azi=dms_rad(azi);
x2=x1+dis*cos(azi);
y2=y1+dis*sin(azi);
end
