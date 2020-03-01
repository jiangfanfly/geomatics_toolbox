function [x,sigma,qxx,v]=JQzypc(l,B,d,px,r)
%此函数用来加权秩亏自由网平差
   p=1./d;
   p=diag(p);
   N=B'*p*B;
   qx=pinv(px);
   Nm=qx*N*pinv((N*qx*N));
   x=Nm*B'*p*l;
   v=(B*x-l).*1000;
   sigma=sqrt(v'*p*v/r);   %单位权中误差
   qxx=Nm*N*Nm';    %x的协因数阵
end