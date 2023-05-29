%ʵ��4-11
clear all
clc
clf

syms t;
x=exp(-t);
y=exp(-t).*cos(10*t);
X=laplace(x)         %�˴�����ֺţ��Ա�������������ʾ���ϱ任���ʽ
Y=laplace(y)         %�˴�����ֺţ��Ա�������������ʾ���ϱ任���ʽ

t=0:0.01:10;
x=exp(-t);
y=exp(-t).*cos(10*t);

subplot(2,2,1);
plot(t,x);
title('x(t)����');

subplot(2,2,3);
plot(t,y);
title('y(t)����');

subplot(2,2,2);
b=[0,0,1];
a=[0,1,1];
sys=tf(b,a);
pzmap(sys);
grid on;

subplot(2,2,4);
b=[0,1,1];
a=[1,2,101];
sys=tf(b,a);
pzmap(sys);
grid on;
