function AdvanceLUDecomposition(A,n)%A is the square matrix,n is the order of A,A must be invertible
D=A; %Store matrix A in D,for later use
L=zeros(n);%Let the L matrix be an zero matrix at first
P=eye(n);%Let the permutation matrix be a identity matrix at first
for i=1:n-1
    for j=i+1:n    
        if A(i,i)==0 %A zero pivot appears on (i,i) position,we need to find a nonzero entry below it to be the new pivot,with row exchange
            for k=n:-1:i+1 %find a nonzero entry below the (i,i) entry in the i column,start from the last row 
                if A(k,i)~=0 %We have found a nonzero entry,to choose it as the new pivot,we need row exchange k<-->i
                    L([i k],:)=L([k i],:); %Permute i and k row in L matrix
                    A([i k],:)=A([k i],:); %Permute i and k row in A matrix
                    P([i k],:)=P([k i],:); %Permute i and k row in P matrix
                    break;
                end  
            end  
        end
        L(j,i)=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:);
    end
end
U=A%A becomes U matrix after Gauss elimination
L=L+eye(n)%All entries on the diagonal of L matrix must be 1 
P %output the permutation matrix
B=L*U %verify if the product of L and U equals to P*A
C=P*D%D is the original A matrix,check it out in row 2 %If B equals C,then it means the algorithm works correctly
 
%some key points and theroms about LU factorization
%some key points and theroms about LU factorization
 
%Theorem 1 A nonsigular matrix Anxn possesses an LU factorization if and
%only if a nonzero pivot does not emerge during row reduction to upper
%triangular form with type III operations.
 
%Theorem 2 For each nonsigular matrix A,there exist a permutation matrix P
%such that PA possesses an LU factorization PA=LU
 
%Remember,the concept of nonsingular matrix is for square matrix,it means
%that the determinant is nonzero,and this is equivalent that the matrix has
%full-rank
 
%Based on these conditions,the first thing about the matrix A on which we
%conduct LU factorization is that A must be a square matrix.The second
%thing is A must be invertible,which is equal to the statement that A is
%non-singlar