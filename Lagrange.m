%��ֵ��
X=1:0.1:3;
%��ֵ����
n=(3-1)/0.1;
%��ֵ
Y=sin(X);
%Lagrange��ֵ����ֵ
L=0;
%Lagrange��ֵ������
l=ones(1,n+1);
%����ĺ�����
x=2;
%�������
for k=1:n+1   
    for i=1:n+1
        if(i~=k)
            l(k)=l(k).*(x-X(i))./(X(k)-X(i));
        end
    end
    L=L+Y(k).*l(k);
end
fprintf('%d��׼ȷֵΪ��%.6f\n',n, sin(x));
fprintf('%d�β�ֵ�Ľ��Ϊ��%.6f\n',n, L);