%% Gauss��Ԫ����Matlabʵ��
function [r_matrix] = GaussElimination(Coefficient_matrix,Load_matrix)
%  2017-11-05  xh_scu
%  inputs:
%         Coefficient_matrix:ϵ������Ϊn*nά����
%         Load_matrix       :�غɾ���Ϊn*1ά����
%  outputs��
%         r_matrix:����������,Ϊn*1Ϊ����

% �ж��������ά���Ƿ�����Ҫ��
[row_coeff,col_coeff] = size(Coefficient_matrix);
[row_load,~] = size(Load_matrix);

% ��ʼ��r_matrix����
r_matrix = zeros(row_load,1);
% �ж������ά���Ƿ�����Ҫ��
if ((row_coeff ~= col_coeff) || (row_coeff ~= row_load))
    % �����������������ʾ
    disp('�������');
else
    % �����������һ������
   for k = 1:row_coeff-1
        % ������Խ�Ԫ�ص�i�еĵ�i��Ԫ���Ƿ�Ϊ0
        if Coefficient_matrix(k,k) == 0
            disp('���Խ�Ԫ�ش���');
            break;
        else
            % ѭ�������k+1�е����һ��
            for i = k+1:row_coeff
               L_ik = Coefficient_matrix(i,k) / Coefficient_matrix(k,k); %����L_ik
               % ����ÿһ�дӵ�i��Ԫ�ؿ�ʼ�������Ԫ��
               for j = k+1:col_coeff
                   Coefficient_matrix(i,j) = Coefficient_matrix(i,j) - ...
                       L_ik*Coefficient_matrix(k,j); % ����a(i,j)
               end
               Load_matrix(i) = Load_matrix(i) - Load_matrix(k)*L_ik; % ����b(i)
               Coefficient_matrix(i,1) = 0; 
            end %forѭ������
        end % ����2����
   end % forѭ������
    % �ش�����
    r_matrix(row_coeff) = Load_matrix(row_coeff)/Coefficient_matrix(row_coeff,col_coeff);
    for k = row_coeff-1:-1:1
        sum_temp = 0;
        for j = k+1:col_coeff
            sum_temp = sum_temp + Coefficient_matrix(k,j)*r_matrix(j);
        end
        r_matrix(k) = (Load_matrix(k) - sum_temp)/Coefficient_matrix(k,k);
    end
end % �����жϽ���
end % ��������
