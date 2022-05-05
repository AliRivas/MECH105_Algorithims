function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
%Example of values for input
time = [140 141 142 143 144 145 146 147 148 149];
% Carbon Dioxide Evolution Rate (g/hour)
CO2evo = [15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75];
% Oxygen Uptake Rate (g/hour)
OxUp = [15.59 16.16 15.35 15.13 14.20 14.23 14.29 12.74 14.74 13.68];

total_CO2_trap = trapz(time, CO2evo)
total_Ox_trap = trapz(time, OxUp)

% using the matlab solution
total_CO2_simp = Simpson(time, CO2evo)
total_Ox_simp = Simpson(time, OxUp)





if nargin~=2
    error('needs to have two imputs to work')
end
L_x=length(x)
L_y=length(y)
L=L_x


if L_y~=L_x
    error('dimentions must be the same')
end 
%Space testing
for k=1:(L_x-1)
    if x(1)-x(2)~=x(k)-x(k+1)
        error('not equal spacing')
    end 
end
%Start of Code
j=L;
I=0;
%testing if it is odd or even
if rem (length(x),2)==0
warning('even'); 


j=(L-1);

x2=x(j:L);
y2=y(j:L);

x=x(1:j)
y=y(1:j)

a_new=x2(1);
b_new=x2(2);

I_trap=(b_new-a_new)*(y2(1)+y2(2))/2;

odd=y(2:2:j-1);
sum_odd=sum(odd);

even=y(3:2:j-1);
sum_even=sum(even)


a=x(1)
b=x(j)
i=(b-a)/(3*(j-2))*(y(1)+4*sum_odd+2*sum_even+y(j));
I=I+i;
end

%Code if odd
if rem(length(x),2)~=0
    odd=y(2:2:j-1);
    sum_odd=sum(odd);
    
    even=y(3:2:j-1);
    sum_even=sum(even);
    
    a=x(1);
    b=x(j);
    I=(b-a)/(3*(j-1))*(y(1)+(4*sum_odd)+(2*sum_even)+y(j));
end
%   I = the numerical integral calculated
if L==2
    I=I_trap;
end