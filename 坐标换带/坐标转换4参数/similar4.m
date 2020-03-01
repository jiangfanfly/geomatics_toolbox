function [dx]=similar4(A,B)
%Az转B
if (nargin ==0)
    [filename,pathname]=uigetfile({'*.txt','data file(*.txt)'},'导入数据');
    if(isempty(pathname))
    return;
    end
    filepath=strcat(pathname,filename);
    gc=dlmread(filepath);
    A=gc(:,1:2);
    B=gc(:,3:4);
end
Xa=A(:,1);
Ya=A(:,2);
Xb=B(:,1);
Yb=B(:,2);
L=[Xb;Yb];
m=length(A);
if (m<2)
    return;
end
C=[ones(m,1),zeros(m,1),Xa,-Ya;
   zeros(m,1),ones(m,1),Ya,Xa];
N=C'*C;
W=C'*L;
D=N\W;
a=atan(D(4)/D(3));
m=D(4)/sin(a);
dx=[D(1);D(2);a;m];
end
