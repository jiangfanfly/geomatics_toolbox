function [v,x,hx,X,N,B,sigma,r]=pc(qdh,zdh,gc,hh,cd_count,yzd_count,wzd_count,yzd_n,d)
ie=0;
B(cd_count,wzd_count)=0;
l(cd_count,1)=0;
while(1)
     for k=1:cd_count               %计算高程近似值
        if (isnan(hh(qdh(k)))&&~isnan(hh(zdh(k))))
            hh(qdh(k))=hh(zdh(k))-gc(k);
            ie=ie+1;
        end   
        if (~isnan(hh(qdh(k)))&& isnan(hh(zdh(k))))
            hh(zdh(k))=hh(qdh(k))+gc(k);
            ie=ie+1;
        end
     end
     if(ie==wzd_count)
         break;
     end
end
for k=1:cd_count
    ii=qdh(k);
    jj=zdh(k);
    B(k,ii)=-1;
    B(k,jj)=1;
    l(k)=(hh(zdh(k))-hh(qdh(k))-gc(k));  %计算l值
end
l=-l;
B(:,[yzd_n'])=[];
s=1./d;
p=diag(s);
N=B'*p*B;
w=B'*p*l;
x=pinv(N)*w;
r=cd_count-wzd_count;
v=(B*x-l)*1000;
sigma=sqrt(v'*p*v/r);
dx=sigma*sqrt(diag(N));
hx=hh(yzd_count+1:end,:);  
X=hx+x;
qxx=pinv(N);
end
