clear all
clc
clf
t=-3:0.01:2;
a=(-t+1).*(u(t)-u(t-1))+u(t+2)-u(t);
plot(t,a);
grid on;         %���������
xlabel('t��');
ylabel('y��');
title('�ź�f(t)�Ĳ���ͼ');
axis([-3 2 -1 2])

