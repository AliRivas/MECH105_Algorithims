function [L, U, P] = luFactor(A)
%	LU decomposition with pivotiing
% Test Function with inputs:
A = [10, 2, -1; 
    -3, -6, 2;
    1, 1, 5];
b = [27; -61.5; -21.5];
% Solve for x
x = A\b;


%Assigning values of rows and columns in Matrix A
[n,n]=size(A);
L=eye(n); 
P=L; 
U=A;
%Conditions, Must be square matrix
if n~=n
    error('The matrix is not a square')
end
%Beginnning of Code
for j=1:n
    [pivot m]=max(abs(U(j:n,j)));
    m=m+j-1;
    if m~=j
        % swap rows m and j in U
        newRow=U(j,:);
        U(j,:)=U(m,:);
        U(m,:)=newRow;
        % Swap rows m and z in P
        newRow=P(j,:);
        P(j,:)=P(m,:);
        P(m,:)=newRow;
        %Conditions
        if j >= 2
            newRow=L(j,1:j-1);
            L(j,1:j-1)=L(m,1:j-1);
            L(m,1:j-1)=newRow;
        end
    end
    for i=j+1:n
        L(i,j)=U(i,j)/U(j,j);
        U(i,:)=U(i,:)-L(i,j)*U(j,:);
    end
end
end