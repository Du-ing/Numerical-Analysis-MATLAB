%定义微分方程
f=@(x,y) 1/x;
%原方程
F=@(x,y) log(x)
%定义离散区间
a=1;b=3;
%定义等分段数
n=20;
%定义步长
h=(b-a)/n;
%定义自变量因变量
x=a:h:b;
y=zeros(1,n+1);
%定义初始值
y(1)=log(x(1));
%开始迭代
for i=1:n+1
    t=y(i)+h*f(x(i),y(i));
    y(i+1)=y(i)+h/2*(f(x(i),y(i))+t);
end
fprintf("微分方程近似迭代结果为：y(%.1f)=%.6f\n",x(n+1),y(n+1));
fprintf("准确结果为：y(%.1f)=%.6f\n",x(n+1),F(x(n+1),y(n+1)));

