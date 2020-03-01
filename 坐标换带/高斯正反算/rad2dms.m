function[dms]=rad2dms(rad)
deg=rad2deg(rad);
[dms1]=degrees2dms(deg);
dms=dms1(:,1)+dms1(:,2)./100+dms1(:,3)./10000;
dms=dms';
end