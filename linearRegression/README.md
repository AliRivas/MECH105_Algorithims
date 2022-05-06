Format of the function: function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)

*Computes the linear regression of a data set given x and y data points. This will take out outliers that are outside the interquartile range (which was determined using the Minitab method). This will also sort the data for lowest y-value to highest y-value.*

**Inputs:**

x: x-values for our data set

y: y-values for our data set

**Outputs:**

fX: x-values with outliers removed

fY: y-values with outliers removed

slope: slope from the linear regression y=mx+b

intercept: intercept from the linear regression y=mx+b

Rsquared: R^2, a.k.a. coefficient of determination
