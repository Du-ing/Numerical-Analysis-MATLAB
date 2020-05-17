%定义所求方程
f=@(x) log(x)-2;
%定义初始迭代的两个点
x1=8;
x2=5;
%定义精度
u=1e-7;
%开始弦截法
X=x2;%新的迭代值
for i=1:20
    X=x2-(x2-x1)/(f(x2)-f(x1))*f(x2);
    if abs(X-x2)<=u
        break;
    end
    x1=x2;
    x2=X;    
end
fprintf("弦截法得到方程的近似根为%.6f\n",X);