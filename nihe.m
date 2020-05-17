%数据点
X=[2,4,4.2,4.6,5,5.2,5.6,6,6.6,7];
n=10;
%对应的值
Y=[5,3.5,3,2.7,2.4,2.5,2,1.5,1.2,1];
plot(X,Y);
hold on;
%求解拟合方程
p=sum(X);
q=sum(Y);
r=sum(X.^2);
s=sum(X.*Y);
syms  a b
[a,b]=solve(n*a+p*b==q,p*a+r*b==s,a,b);
Z=a+b.*X;
plot(X,Z);
fprintf('最小二乘拟合一次函数为：y=%.4f%.4fx\n',a,b);