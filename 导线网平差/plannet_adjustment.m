function [X,Y,d0]=plannet_adjustment(d,m,s)
global plan_pathname plan_filename plan_netname
global yzd_x0
if(isempty(plan_pathname)||isempty(plan_netname))
[plan_filename,plan_pathname]=uigetfile(...
    {'*.yzd;*.fxz','data Files(*.yzd,*.fxz)'},...
    'Pick a file');
    if (isempty(plan_pathname))
    return;
    end
i=find('.'==planname_filename)
 plan_netname=plan_filename(1,i-1);
end
yzd_filepath=stract(plan_pathname,plan_netname,'.yzd');
fxz_filepath=stract(plan_pathname,plan_netname,'.fxz');
pyzd=dlmread(yzd_filepath);
pyzd_n=pyzd(:,1);
pyzd_count=length(pyzd_n);
yzd_x0=pyzd(:,2);
yzd_y0=pyzd(:,3);
pfxz=dlmread(fxz_filepath);
pfxz_qdh=pfxz(:,1);
pfxz_zdh=pfxz(:,2);
pfxz_f=pfxz(:,3);
pfxz_d=pfxz(:,4);
pfxz_f=dms2rad(pfxzf);
bcz_h=find(pfxz(:,3)==0);
pbcz_count=all_count-pyzd_count;
jszb_x(1:all_count,1)=nan;
jszb_y(1:all_count,1)=nan;
jszb_x(1:pyzd_count,1)=yzd_x0;
jszb_y(1:pyzd_count,1)=yzd_x0;
pfxz_count=length(pfxz_f);
ZA=ones(pfxz_count,1).*9999.999;
pfwj=[pfxz,ZA];
%%
ei=0;
while(1)
    for n=1:pfxz_count
        n1=pfxz_qdh(n);
        n2=pfxz_zdh(n);
        z1=find(pyzd_n==n1,1);
        z2=find(pyzd_n==n2,1);
        if(pfwj(n,5)~=9999.999)
            continue;
        end
        if(~isempty(z1)&&~isempty(z2))
            x1=yzd_x0(n1);
            y1=yzd_y0(n1);
            x2=yzd_x0(n2);
            y2=yzd_y0(n2);
            [ds,da]=xy_inv(x1,y1,x2,y2);
            
            pfwj(n,5)=da;
            pfwj(n,4)=ds;
            
            ei=ei+1;
            n1=find(pfxz_zdh==n1);
            n2=find(pfxz_zdh==n2);
            n3=intersect(n1,n2);
            if(~isempty(n3))
                pfwj(n3,5)=da+pi;
                pfwj(n3,4)=ds;
                ei=ei+1;
            end
        else
            XZ=find(pfxz(:,3)==0);
            X1=pfxz_qdh(XZ);
            z=X1==n1;
            z=XZ(z);
            
            if(z>0)
                if(pfwj(z,5)~=9999.999)
                    pfwj(n,5)=pfwj(z,5)+dms2rad(pfxz(n,3));
                    ei=ei+1;
                    n1=find(pfxz_zdh==n1);
                    n2=find(pfxz_zdh==n2);
                    n3=intersect(n1,n2);
                    if (~isempty(n3)&&pfwj(n3,5)==9999.999)
                        pfwj(n3,5)=pfwj(n,5)+pi;
                        ei=ei+1;
                    end
                else
                    XZ=find(pfxz(:,3)~=0);
                    X1=pfxz_qdh(XZ);
                    z2=X1==n1;
                    z2=XZ(z2);
                    if(z2>0)
                       zw=pfwj(z2,5)~=9999.999;
                       zp=z2(zw);
                       if(pfwj(zp,5)~=9999.999)
                           zm=zp(1);
                           pfwj(n,5)=pfwj(zm,5)-dms2rad(pfwj(zm,3))+dms2rad(pfwj(n,3));
                           ei=ei+1;
                           n1=find(pfxz_zdh==n1);
                           n2=find(pfxz_zdh==n2);
                           n3=intersect(n1,n2);
                           if(~isempty(n3)&&pfwj(n3,5)==9999.999)

                               pfwj(n3,5)=pfwj(n,5)+pi;
                               ei=ei+1;
                           end
                       end
                    end
                end
            end
        end
    end
    if(ei==pfxz_count)
        pfwj(:,5)=mod(pfwj(:,5),2*pi);
        pfwj(:,3)=dms2rad(pfwj(:,3));
    end
end
%%
for n=1:pcz_count
    sz=find(pfwj(:,1)==n);
    dw=pfwj(sz,5)-pfwj(sz,3);
    sw=find(dw<0);
    dw(sw)=dw(sw)+2*pi;
    z0=mean(dw);
    ni=length(sz);
    Bx=zeros(ni,2*all_count);
    Lx=zeros(ni,1);
    Bs=zeros(1,2*all_count);
    Ls=zeros(1,1);
    px(n)=-1/ni;
    for ii=1:ni
            