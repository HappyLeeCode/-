%��������Ƶ��ͼ�ĺ���Spectrogram(tao,T)
%����taoΪ�����ȣ�TΪ�ź�����
function Spectrogram(tao,T)
 for k=-8:1:8
  if k==0         %������k=0ʱ,��Ƶ��ͼ������ֵ
     ak=tao/T;
     stem(k,ak);  %����Ƶ��ͼ
  else
     ak=(sin(k*pi*tao/T))./(k*pi);
     stem(k,ak);
     title(['tao=',num2str(tao),',T=',num2str(T)])  %��ӡͼ�α���
     hold on;
  end
 end
end




