function HuaTu(p)
%�������ź����վ���Ľ���������ɵ�ͼ�η�װ�ɺ���
%����HuaTu(p)�еĲ���pΪ�Զ���Ĳ���ʱ����
t=0:p:10;
f1=2*rectpuls(t,2);
f2=rectpuls(t,4);
y=conv(f1,f2);      %���źž��
plot(y);
title(['p=',num2str(p)])   %��ӡͼ�α���
axis([0 400 0 250])        %ͳһͼ����ʾ��Χ
end