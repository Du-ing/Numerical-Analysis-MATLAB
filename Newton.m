%��ֵ��
X=1:0.1:3;
%��ֵ����
n=(3-1)/0.1;
%��ֵ
Y=log(X);
%�������̱�
a=zeros(n+1,n+1);
for i=1:n+1
    a(i,1)=Y(i);
end
for j=2:n+1
    for i=j:n+1
        a(i,j)=(a(i,j-1)-a(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
%����ţ�ٲ�ֵ����
N=0;
w=1;
x=2;
for i=1:n+1
    N=N+a(i,i).*w;
    w=w.*(x-X(i));
end
fprintf('x��Ӧ��׼ȷֵΪ��%.6f\n',log(x));
fprintf('x��Ӧ�Ĳ�ֵ���Ϊ��%.6f\n',N);