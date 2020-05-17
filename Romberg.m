%给定原函数
f=@(x) x.^1.5;
%给定积分区间端点值
a=0;
b=1;
%建立算法表
k=6;
T=zeros(k,k);
%先计算第一列
T(1,1)=(b-a)/2*(f(a)+f(b));
h=b-a;
for i=2:k
    T(i,1)=T(i-1,1)/2+h/2*sum(f(a+(0:2^(i-2)-1)*h)+0.5*h);
    h=h/2;
end
%计算后面的列
for j=2:k
    for i=j:k
        T(i,j)=1/(2^j-1)*(2^j*T(i,j-1)-T(i-1,j-1));
    end
end
fprintf("算法得到的数表如下：\n");
disp(T);
fprintf("积分准确值为：%.6f\n",2/5);
fprintf("Romberg积分算法得到的近似值为：%.6f\n",T(k,k));