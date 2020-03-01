function[dis,azi]=xy_azi[x1,y1,x2,y2]
%%xy_zai坐标反算函数
%x1，y1起点坐标
%x2，y2终点坐标
%dis距离
%azi方位角
dx=x2-x1;
dy=y2-y1;
tx=atan2(dy,dx);
dis=sqrt(dx.^2+dy.^2);
if (tx<0)
    azi=tx+2*pi;
else
    azi=tx;
end
end