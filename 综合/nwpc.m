function [x1,x2,x,sigma,qxx,v]=nwpc(l,B,d,r,bwdd,wdd,wzd_count)
%拟稳平差
 p=1./d;
 p=diag(p);
n=size(B);
s=n(1:1);
B1=zeros(s,1);
B2=B1;             %为B1,B2赋初值0，增强程序兼容性（所有点都不稳定或者都稳定时仍可以运行）
for k=1:size(bwdd,2)
    if k==1
        
      B1=B(:,bwdd(k));    %取出不稳定点的B
    else
      B1=[B1,B(:,bwdd(k))];
    end 
end
for k=1:size(wdd,2)
    if k==1
      B2=B(:,wdd(k));      %取出稳定点的B
    else
      B2=[B2,B(:,wdd(k))];
    end  
end
N11=B1'*p*B1;
N12=B1'*p*B2;
N21=B2'*p*B1;
N22=B2'*p*B2;
M=N22-N21*pinv(N11)*N12;
arf=B2'-N21*pinv(N11)*B1';
Mm=pinv(M);
aerf=Mm*arf;
beta=pinv(N11)*(B1'-N12*aerf);
x2=aerf*p*l;
x1=beta*p*l;
x=zeros(wzd_count,1);
for k=1:size(wdd,2)
    x(wdd(k))=x2(k);
end
for k=1:size(bwdd,2)
    x(bwdd(k))=x1(k);
end
v=(B*x-l)*1000;
 sigma=sqrt(v'*p*v/r);   %单位权中误差
qxx=[beta*p*beta',beta*p*aerf';aerf*p*beta',aerf*p*aerf'];
end
