%����΢�ַ���
f=@(x,y) cos(x);
%ԭ����
F=@(x,y) sin(x)
%������ɢ����
a=3;b=4;
%����ȷֶ���
n=25;
%���岽��
h=(b-a)/n;
%�����Ա��������
x=a:h:b;
y=zeros(1,n+1);
%�����ʼֵ
y(1)=sin(x(1));
%��ʼ����
for i=1:n+1
    K1=f(x(i)+y(i));
    K2=f(x(i)+h/2,y(i)+h/2*K1);
    K3=f(x(i)+h/2,y(i)+h/2*K2);
    K4=f(x(i)+h,y(i)+h*K3);
    y(i+1)=y(i)+h/6*(K1+2*K2+2*K3+K4);
end
fprintf("΢�ַ��̽��Ƶ������Ϊ��y(%.1f)=%.6f\n",x(n+1),y(n+1));
fprintf("׼ȷ���Ϊ��y(%.1f)=%.6f\n",x(n+1),F(x(n+1),y(n+1)));