function [n,deta,rr,t]=cucha(v,r,N,B,d,cd_count)
%n粗差所在路线号，deta粗差改正数，rr平差因子，t统计量
s=1./d;
p=diag(s);
qxx=pinv(N);
qll=B*qxx*B';
qvv=pinv(p)-qll;
J=B*pinv(N)*B'*p;
I=ones(cd_count);
rr=I-J;                %求平差因子
qvv=diag(qvv);
tf=icdf('t',0.975,r-1);
for i=1:cd_count
    s=sqrt((v'*p*v-v(i)^2/qvv(i))/(r-1));
    t(i)=v(i)/(s*sqrt(qvv(i)));
end
n=nan;deta=nan;
for i=1:cd_count
    if abs(t(i))>tf
    n=i;                   %得到粗差所在观测路线号
    z=rr(i,i);
    deta=v(i)/z       %求粗差改正数
    end
end
end



        