%���ݵ�
X=[2,4,4.2,4.6,5,5.2,5.6,6,6.6,7];
n=10;
%��Ӧ��ֵ
Y=[5,3.5,3,2.7,2.4,2.5,2,1.5,1.2,1];
plot(X,Y);
hold on;
%�����Ϸ���
p=sum(X);
q=sum(Y);
r=sum(X.^2);
s=sum(X.*Y);
syms  a b
[a,b]=solve(n*a+p*b==q,p*a+r*b==s,a,b);
Z=a+b.*X;
plot(X,Z);
fprintf('��С�������һ�κ���Ϊ��y=%.4f%.4fx\n',a,b);