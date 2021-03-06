function [B,L]=xy2BL(X,Y,L0,n)
%高斯反算
L0=dms2rad(L0);
ellipsoid=get_ellipsoid(n); %获取椭球参数
a=ellipsoid.a;
b=ellipsoid.b;
e1=(sqrt(a^2-b^2))/a;
e2=(sqrt(a^2-b^2))/b;
e1=e1.^2;
e2=e2.^2;
c=a.*sqrt(1+e2);
b=1-0.75.*e2+(45.0/64).*e2.^2-(175.0/256).*e2^3.0+(11025.0/16384).*e2^4.0;
B0=X/(c*b);
kp=1-e1.*sin(B0).^2.0;
al=a.*cos(B0)./sqrt(kp);
l0=Y./al;
an=length(X);
dd=0.00000000001;
dx=dd.*ones(1,an);
Bi=B0;
Li=l0;
while(1)
    [f1,f2]=getF1F2(a,e2,Bi,Li);
    Bi=(X-f1-f2)./(c.*b);
    kp=(1-e1.*sin(Bi).^2.0);
    a1=a.*cos(Bi)./sqrt(kp);
    f3=getF3(a,e2,Bi,L0);
    Li=(Y-f3)./a1;
    dB=B0-Bi;
    dL=l0-Li;
    dB=abs(dB);
    dL=abs(dL);
    l0=Li;
    B0=Bi;
    ai=dB<dx;
    bi=dL<dx;
    aii=sum(ai);
    bii=sum(bi);
    if(isnan(aii)||isnan(bii))
        break;
    end
end
L=L0+Li;
B=Bi;
L=rad2dms(L);
B=rad2dms(B);
end
