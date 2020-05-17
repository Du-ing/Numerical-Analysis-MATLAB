%插值点
X=1:0.1:3;
%插值点数
n=(3-1)/0.1;
%插值
Y=sin(X);
%Lagrange插值函数值
L=0;
%Lagrange插值基函数
l=ones(1,n+1);
%所求的函数点
x=2;
%计算过程
for k=1:n+1   
    for i=1:n+1
        if(i~=k)
            l(k)=l(k).*(x-X(i))./(X(k)-X(i));
        end
    end
    L=L+Y(k).*l(k);
end
fprintf('%d次准确值为：%.6f\n',n, sin(x));
fprintf('%d次插值的结果为：%.6f\n',n, L);