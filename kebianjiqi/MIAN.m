
Jm=cell(6,6); 
T=cell(6,6);
JmNumber=10;

Jm{1,1}=[3,10];
Jm{1,2}=[1];
Jm{1,3}=[2];
Jm{1,4}=[4,7];
Jm{1,5}=[6,8];
Jm{1,6}=[5];

Jm{2,1}=[2];
Jm{2,2}=[3];
Jm{2,3}=[5,8];
Jm{2,4}=[6,7];
Jm{2,5}=[1];
Jm{2,6}=[4,10];

Jm{3,1}=[3,9];
Jm{3,2}=[4,7];
Jm{3,3}=[6,8];
Jm{3,4}=[1];
Jm{3,5}=[2,10];
Jm{3,6}=[5];

Jm{4,1}=[4];
Jm{4,2}=[1,9];
Jm{4,3}=[3,7];
Jm{4,4}=[2,8];
Jm{4,5}=[5];
Jm{4,6}=[6];

Jm{5,1}=[5];
Jm{5,2}=[2,7];
Jm{5,3}=[3,10];
Jm{5,4}=[6,9];
Jm{5,5}=[1];
Jm{5,6}=[4,8];

Jm{6,1}=[2];
Jm{6,2}=[4,7];
Jm{6,3}=[6,9];
Jm{6,4}=[1];
Jm{6,5}=[5,8];
Jm{6,6}=[3];

T{1,1}=[3,5];
T{1,2}=[10];
T{1,3}=[9];
T{1,4}=[5,4];
T{1,5}=[3,3];
T{1,6}=[10];

T{2,1}=[6];
T{2,2}=[8];
T{2,3}=[1,4];
T{2,4}=[5,6];
T{2,5}=[3];
T{2,6}=[3,3];

T{3,1}=[1,4];
T{3,2}=[5,7];
T{3,3}=[5,6];
T{3,4}=[5];
T{3,5}=[9,11];
T{3,6}=[1];

T{4,1}=[7];
T{4,2}=[4,3];
T{4,3}=[4,6];
T{4,4}=[3,5];
T{4,5}=[1];
T{4,6}=[3];

T{5,1}=[6];
T{5,2}=[10,12];
T{5,3}=[7,9];
T{5,4}=[8,8];
T{5,5}=[5];
T{5,6}=[4,7];

T{6,1}=[3];
T{6,2}=[10,11];
T{6,3}=[8,7];
T{6,4}=[9];
T{6,5}=[4,5];
T{6,6}=[9];


MinVal = JSP(T,Jm,JmNumber,40,200,0.9,0.8,0.6)

%T   T{5,6}=[4,7];  ��ʾ ���� 5�� ���� 6�ļӹ�ʱ�� 4����7
%Jm  Jm{5,6}=[4,8]; ��ʾ ���� 5�� ���� 6�ļӹ�����ʹ�� ���� 4���� 8
%  JmNumber        ���Լӹ��Ļ���������
%  NIND=;        %������Ŀ(Number of individuals)
%  MAXGEN=;      %����Ŵ�����(Maximum number of generations)
%  GGAP=;       %����(Generation gap)
%  XOVR=;       %������
%  MUTR=;       %������

