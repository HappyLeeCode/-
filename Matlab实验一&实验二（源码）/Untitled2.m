clear all
clc
clf
t=-2:0.01:5;
y2=2*sin(2*pi*t+pi/4);
plot(t,y2);
xlabel('t��');
ylabel('y��');
title('f(t)=2sin(2��t+��/4)�Ĳ���ͼ');
axis([-2 2 -2 2])