syms x
y=1/(x+4);  %��������
dy=int(y)  %ԭ�������ʽ
disp(vpa(int(y,0,2),6));  %ԭ������ֵ