%定义所求函数
f=@(x) x^2-3;
%定义初始两端点
a=0;
b=4;
%定义要达到的精度
u=1e-7;
%近似解
x=0;
%开始二分
while abs(a-b)>u
    x=(a+b)/2;
    if f(x)==0
        break;
    end
    if f(a)*f(x)<0
        b=x;
    else
        a=x;
    end
end
fprintf("二分法得到方程近似根为%.6f\n",x);