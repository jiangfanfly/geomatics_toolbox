function [dx]=bursa7(A,B)
if (nagin==0)
    [filename,pathname]=uigetfile({'*.txt','data file(*.txt)'},'导入数据');
    if(isempty(pathname))
    return;
    end
    filepath=strcat(pathname,filename);
    gc=dlmread(filepath);
    A=gc(:,1:3);
    B=gc(:,4:6);
end
Xa=A(:,1);
Ya=A(:,2);
Za=A(:,3);
Xb=B(:,1);
Yb=B(:,2);
Zb=B(:,3);
L=[Xb-Xa;Yb-Ya;Zb-Za];
m=length(A);
if(m<3)
    return
end
C=[ones(m,1),zeros(m,1),zeros(m,1),zeros(m,1),Za,Ya,Xa;
   zeros(m,1),ones(m,1),zeros(m,1),Za,zeros(m,1),-Xa,Ya;
   zeros(m,1),zeros(m,1),ones(m,1),-Ya,Xa,zeros(m,1),Za];
N=C'*C;
W=C'*L;
dx=N\W;
end