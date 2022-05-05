function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

% Values to test function, using default value for es
func = @(x) x.^3;
xl = -1
xu = 1

%Braket Check
if func(xl)*func(xu)>0
    error('No sign change')
end
%Nargin/Constraints
if nargin<4
   es=0.000001
end

if nargin<5
maxit=200;
end
%Variables and start of Loop
ea=100;
iter=-1;
xr_new=xl;
while ea>es && iter<maxit
    xr_old=xr_new;
    xr_new=(xu)-(((func(xu))*(xl-xu))/(func(xl)-func(xu)));
 
if func(xl)*func(xr_new)>=0
    xl=xr_new;
else
    xu=xr_new
end
ea=abs((xr_new-xr_old)/xr_new)*100;
iter=iter+1
end

root=xr_new
fx=func(xr_new);

end