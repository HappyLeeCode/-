%ʵ��3-7
%ֱ������freqs()�������Ʒ�Ƶ����Ƶ����

clear all
clc
clf
b=[0, 0, 1];
a=[0.08, 0.4, 1];
t=0:0.01:10;
x=sin(t)+sin(20*t);
freqs(b,a);
figure;
lsim(b,a,x,t)