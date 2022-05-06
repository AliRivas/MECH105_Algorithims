function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
n = 4; 
m = 5;

firstRow=[1:n]
firstCol=[1:m]
A=zeros(n,m)
A(1,:)=1:m
A(:,1)=1:n
for i=2:n
    for j=2:m
            A(i,j)=A(i-1,j)+A(i,j-1)
    if nargin<2
       warning('not enough inputs')
    end
    end
end
