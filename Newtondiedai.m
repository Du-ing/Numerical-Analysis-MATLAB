%�������󷽳�
f=@(x) log(x)-1;
%���̵�����
df=@(x) 1/x;
%�������ֵ
x=5;
%���徫��
u=1e-7;
%��ʼNewton����
t=x;%��һ������ֵ
for i=1:20
    x=t;
    t=x-f(x)/df(x);
    if abs(t-x)<=u
        break;
    end
end
fprintf("Newton�������õ����̵Ľ��Ƹ�Ϊ%.6f\n",t);