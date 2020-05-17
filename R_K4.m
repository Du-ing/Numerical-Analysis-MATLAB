%定义微分方程
f=@(x,y) cos(x);
%原方程
F=@(x,y) sin(x)
%定义离散区间
a=3;b=4;
%定义等分段数
n=25;
%定义步长
h=(b-a)/n;
%定义自变量因变量
x=a:h:b;
y=zeros(1,n+1);
%定义初始值
y(1)=sin(x(1));
%开始迭代
for i=1:n+1
    K1=f(x(i)+y(i));
    K2=f(x(i)+h/2,y(i)+h/2*K1);
    K3=f(x(i)+h/2,y(i)+h/2*K2);
    K4=f(x(i)+h,y(i)+h*K3);
    y(i+1)=y(i)+h/6*(K1+2*K2+2*K3+K4);
end
fprintf("微分方程近似迭代结果为：y(%.1f)=%.6f\n",x(n+1),y(n+1));
fprintf("准确结果为：y(%.1f)=%.6f\n",x(n+1),F(x(n+1),y(n+1)));