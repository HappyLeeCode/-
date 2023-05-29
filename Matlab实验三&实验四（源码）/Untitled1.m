%ʵ��3-8
clear all
clc
clf

[t,omg,FT,IFT]=prefourier([-5 5],1000,[-250 250],1000);
g=3*cos(10*t)+2*cos(20*t);
f=g.*cos(100*t);
g0=f.*cos(100*t);
H=(omg>-30&omg<30);

G=FT*g;
F=FT*f;
G0=FT*g0;

G1=H.*G0;
g1=IFT*G1;

figure(1);
subplot(2,2,1);
plot(t,g);
xlabel('ʱ��t');
ylabel('g(t)');
title('g(t)��ʱ����');

subplot(2,2,2);
plot(t,f);
xlabel('ʱ��t');
ylabel('f(t)');
title('f(t)��ʱ����');

subplot(2,2,3);
plot(t,g0);
xlabel('ʱ��t');
ylabel('g0(t)');
title('g0(t)��ʱ����');

subplot(2,2,4);
plot(t,g1);
xlabel('ʱ��t');
ylabel('g1(t)');
title('g1(t)��ʱ����');

figure(2);
subplot(3,2,1);
stem(omg,G);
xlabel('Ƶ��w');
ylabel('G(jw)');
title('G(jw)��Ƶ�ײ���');

subplot(3,2,2);
stem(omg,F);
xlabel('Ƶ��w');
ylabel('F(jw)');
title('F(jw)��Ƶ�ײ���');

subplot(3,2,3);
stem(omg,G0);
xlabel('Ƶ��w');
ylabel('G0(jw)');
title('G0(jw)��Ƶ�ײ���');

subplot(3,2,4);
stem(omg,H);
xlabel('Ƶ��w');
ylabel('H(jw)');
title('H(jw)��Ƶ�ײ���');

subplot(3,2,5);
stem(omg,G1);
xlabel('Ƶ��w');
ylabel('G1(jw)');
title('G1(jw)��Ƶ�ײ���');
