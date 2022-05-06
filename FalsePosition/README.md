Function setup: function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)

*The falsePosition finds the root of a function using false position method, given a function, upper, and lower guess. Beware when using, that your guesses (or function) isn't near an infelction point, as that may max out the maximum ammount of iterations that is set.*

**Inputs**

-func - the functions being evaluated

-xl - the lower guess

-xu - the upper guess

-es - the desired relative error (defaults to 0.0001%)

-maxit - the maximum number of iteration to use (defaults to 200)

**Outputs:**

-root - the estimated root location

-fx - the function evaluated at the root location

-ea - the approximate relative error (%)

-iter - how many iterations were performed
