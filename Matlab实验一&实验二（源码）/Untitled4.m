clear all
clc
clf
t=-5:0.01:5;
y4=sin(2*pi*440*t).*sin(2*pi*4*t);
plot(t,y4);
xlabel('t��');
ylabel('y��');
title('440Hz�ĺ�4Hz�����Ҳ���˵�ͼ��')
sound(y4)  %���������ź�