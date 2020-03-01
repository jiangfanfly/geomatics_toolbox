function [rad]=dms2rad(dms)
%dms可为任意矩阵
[m,n]=size(dms);
dms=reshape(dms.',1,m*n);         %将角度列为行向量
d=fix(dms);
f1=(dms-d).*100;
f=fix(f1);
m=(f1-f).*100;
deg=dms2degrees([d',f',m']);
rad=(deg2rad(deg))';
end