%����ԭ����
f=@(x) x.^1.5;
%������������˵�ֵ
a=0;
b=1;
%�����㷨��
k=6;
T=zeros(k,k);
%�ȼ����һ��
T(1,1)=(b-a)/2*(f(a)+f(b));
h=b-a;
for i=2:k
    T(i,1)=T(i-1,1)/2+h/2*sum(f(a+(0:2^(i-2)-1)*h)+0.5*h);
    h=h/2;
end
%����������
for j=2:k
    for i=j:k
        T(i,j)=1/(2^j-1)*(2^j*T(i,j-1)-T(i-1,j-1));
    end
end
fprintf("�㷨�õ����������£�\n");
disp(T);
fprintf("����׼ȷֵΪ��%.6f\n",2/5);
fprintf("Romberg�����㷨�õ��Ľ���ֵΪ��%.6f\n",T(k,k));