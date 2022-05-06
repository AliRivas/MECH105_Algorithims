Function format: function [I] = Simpson(x, y)

*Numerical evaluation of integral by Simpson's 1/3 Rule. If there is an extra set of data points that do not fit into the Simpson's Rule, Trapezodial Rule is applied to the last section. The data points need to be equally spaces, and the data sets need to have the same number of points, or else there will be an error thrown.*

**Inputs**

x = the vector of equally spaced independent variable

y = the vector of function values with respect to x

**Outputs:**

I = the numerical integral calculated
