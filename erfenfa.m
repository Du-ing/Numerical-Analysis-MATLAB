%����������
f=@(x) x^2-3;
%�����ʼ���˵�
a=0;
b=4;
%����Ҫ�ﵽ�ľ���
u=1e-7;
%���ƽ�
x=0;
%��ʼ����
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
fprintf("���ַ��õ����̽��Ƹ�Ϊ%.6f\n",x);