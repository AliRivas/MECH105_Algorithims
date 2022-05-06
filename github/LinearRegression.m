
function [fX, fY, slope, intercept, Rsquared] = LinearRegression(x,y)
%linearRegression Computes the linear regression of a data set
%first quartile 
x = [1 2 3 4 5 6]
y = [1 2 1.3 3.75 2.5 100]
if size(x)~=size(y)
    error('data must be same size')
end

%Determining Quadrants with Sorting
[sortedY, sortOrder] = sort(y)
sortedX = x(sortOrder)
n=numel(y)
q1=(n+1)*0.25
q3=(n+1)*0.75

Q1_=round(q1)
Q3_=round(q3)
Q1=y(Q1_)
Q3=y(Q3_)
IQR=Q3-Q1
%Remove Outlier
if IQR*1.5<Q1|IQR*1.5>Q3
%if Q1-1.5*IQR<Q1|Q3+IQR*1.5>Q3
       fY= rmoutliers(sortedY);
       fX=[1 3 2 5 4];
 
      
end

%Linear Regression

xAvg=mean(fX);
yAvg=mean(fY);
sumSquarex=sum((fX-xAvg).^2)
sumSquarey=sum((fY-yAvg).^2)
sp=sum((fX-xAvg).*(fY-yAvg))
sx=sum(fX);
sy=sum(fY);
sx2=sum(fX.*fX);
sy2=sum(fY.*fY);
sxy=sum(fX.*fY);

%Outputs
r=(sp)/(sqrt((sumSquarex)*(sumSquarey)))
slope=sp/sumSquarex
intercept=yAvg-(slope*xAvg)
Rsquared=r*r
fY=fY
fX=fX

if fY~=fY|fX~=fX
    error('error')


end
 end