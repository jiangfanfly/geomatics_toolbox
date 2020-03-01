function []=shuchu(a,b,fid)
%Êä³ö
  [m,n]=size(a);
  fprintf( fid, '%s\n',b);
for i=1:1:m
   for j=1:1:n
      if j==n
      fprintf(fid,'%g\n',a(i,j));
      else
      fprintf(fid,'%g\t',a(i,j));
      end
   end
end
end
