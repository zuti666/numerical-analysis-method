%标准正交基orth
A=rand(3,4); %创建3*4阶随机分布矩阵
B=orth(A);   %矩阵A的标准正交基
B'*B        %检验B'*B = eye (rank(A))