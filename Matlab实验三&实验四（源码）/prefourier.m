function [t,omg,FT,IFT]=prefourier(Trg,N,OMGrg,K)
%TrgΪʱ����ֹ��Χ
%NΪʱ���������
%OMGrgΪƵ����ֹ��Χ
%KΪƵ���������
%tΪ����ʱ���
%omgΪ����Ƶ�ʵ�
%FTΪ����Ҷ�任���󣨽��þ�������źż����źŵĸ���Ҷ�任��
%IFTΪ����Ҷ���任���󣨽��þ�������źż����źŵĸ���Ҷ���任��

T=Trg(2)-Trg(1);
t=linspace(Trg(1),Trg(2)-T/N,N)';
OMG=OMGrg(2)-OMGrg(1);
omg=linspace(OMGrg(1),OMGrg(2)-OMG/K,K)';
FT=T/N*exp(-j*kron(omg,t'));
IFT=OMG/2/pi/K*exp(j*kron(t,omg'));

end