%���ö��ַ��������Է�����ʾ��
%f(x)=x^3*cos(x)+2*x^2-2*sin(x��������[1,3]֮��ĸ�
%���ݷ��̻���ͼ��
fplot(@(x)x.^3*cos(x)+2*x.^2-2*sin(x),[1,3]);
grid on;
hold on;
%���ñ�д�Ķ��ַ����
[k,c,err,yc]=bisect('funbiset',1,3,1e-6);
%��ͼ����ʾ��
plot(c,yc,'r*');
disp('�������');disp(k);
disp('��');disp(vpa(c,8));
disp('���');disp(vpa(err,8));