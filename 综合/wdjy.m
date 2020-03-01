function [wdd,bwdd]=wdjy(X1,X2,sigma1,sigma2,qxx1,qxx2,r,wzd_count)
%此函数用来检测点是否稳定
 X1=X1.*1000;
 X2=X2.*1000;
  qx1=diag(qxx1,0);
  qx2=diag(qxx2,0);
  wzd_count=wzd_count(1:1);
  t(1:5)=nan;
  for k=1:wzd_count
  t(k)=abs((X1(k)-X2(k))/sqrt(sigma1^2.*qx1(k)+sigma2^2.*qx2(k)));  %计算统计量
  end
  %利用t检验检验各点稳定程度
  f=r+r;                 %计算自由度
  tf=icdf('t',0.975,f);  %计算以f为自由度时的t值
  i=1;
  j=1;
  wdd(1:size(qx1))=nan;
  bwdd(1:size(qx1))=nan;
  for k=1:wzd_count
      if t(k)>tf        %拒绝假设,即不稳定
        bwdd(i)=k;
        i=i+1;
      end
      if t(k)<=tf
          wdd(j)=k;
          j=j+1;
      end
  end
  bwdd=bwdd(1:i-1);
  wdd=wdd(1:j-1);
end