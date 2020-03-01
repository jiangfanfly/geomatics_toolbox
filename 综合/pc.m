function [v,x,hx,X,N,B,sigma,r]=pc(qdh,zdh,gc,hh,cd_count,yzd_count,wzd_count,yzd_n,d)
%qdh,zdh为起点号和终点号,hh为高程近似值,cd-cocunt为测段数,yzd_count为已知点数,wzd_count未知点数
%yzd_n为未知点数,d为路线长度
%v高差改正数,x高程改正数,hx高差平差值,X高程平差值,B,N系数阵及逆,sigma,单位权中误差,r多余观测数
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
    B(k,jj)=1;                          %得到带已知点的系数B阵
    l(k)=(hh(zdh(k))-hh(qdh(k))-gc(k));  %计算l值
end
l=-l;
B(:,[yzd_n'])=[];                %初始文件组织已知点不是必须从1开始,需要此处去掉已知点的系数列.
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
