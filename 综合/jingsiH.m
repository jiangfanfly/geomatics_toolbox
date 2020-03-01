function [hh,B,l]=jingsiH(qdh,zdh,gc,cd_count,hh)
%此函数用来计算系数阵,L值
l(cd_count,1)=0;
hh(1:1)=0;
    for k=1:cd_count               %计算高程近似值
        if (isnan(hh(qdh(k)))&&~isnan(hh(zdh(k))))
            hh(qdh(k))=hh(zdh(k))-gc(k);
        end   
        if (~isnan(hh(qdh(k)))&& isnan(hh(zdh(k))))
            hh(zdh(k))=hh(qdh(k))+gc(k);
        end
     
    end
for k=1:cd_count
    ii=qdh(k);
    jj=zdh(k);
    B(k,ii)=-1;                       %计算系数B
    B(k,jj)=1;          
    l(k)=(hh(zdh(k))-hh(qdh(k))-gc(k));  %计算l值
end
l=-l;
end
