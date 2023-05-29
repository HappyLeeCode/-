clear ALL;
clc
clf

[t,omg,FT,IFT]=prefourier([-5 5],1000,[-250 250],1000);
g=3*cos(10*t)+2*cos(20*t);
f=g.*cos(100*t);
g0=f.*cos(100*t);
G=FT*g;
F=FT*f;
G0=FT*g0;
H=(omg>=-30&omg<=30);
G1=G0.*H;
g1=IFT*G1;

figure(1);%����ʱ����ͼ
subplot(2,2,1)
plot(t,g);
xlabel('ʱ��t');
ylabel('g(t)');

subplot(2,2,2)
plot(t,f);
xlabel('ʱ��t');
ylabel('f(t)');

subplot(2,2,3)
plot(t,g0);
xlabel('ʱ��t');
ylabel('g0(t)');

subplot(2,2,4)
plot(t,g1);
xlabel('ʱ��t');
ylabel('g1(t)');

figure(2);%����Ƶ����ͼ
subplot(2,3,1)
stem(G);
xlabel('Ƶ��w');
ylabel('G(jw)');

subplot(2,3,2)
stem(F);
xlabel('Ƶ��w');
ylabel('F(jw)');

subplot(2,3,3)
stem(G0);
xlabel('Ƶ��w');
ylabel('G0(jw)');

subplot(2,3,4)
stem(H);
xlabel('Ƶ��w');
ylabel('H(jw)');

subplot(2,3,5)
stem(G1);
xlabel('Ƶ��w');
ylabel('G1(jw)');


