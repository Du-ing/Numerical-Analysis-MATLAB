%定义所求方程
f=@(x) log(x)-1;
%方程导函数
df=@(x) 1/x;
%定义迭代值
x=5;
%定义精度
u=1e-7;
%开始Newton迭代
t=x;%下一个迭代值
for i=1:20
    x=t;
    t=x-f(x)/df(x);
    if abs(t-x)<=u
        break;
    end
end
fprintf("Newton迭代法得到方程的近似根为%.6f\n",t);