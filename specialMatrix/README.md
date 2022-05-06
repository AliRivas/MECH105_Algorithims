Function format: function [A] = specialMatrix(n,m)

A function that returns a n x m matrix with elements that has the following values:

    -The value of each element in the first row is the number of the column
    
    -The value of each element in the first column in the number of the row
    
    -The rest of the elements each has a value equal to the sum of the element above it and element to the left
    
Inputs:

  -n is the number of rows
  
  -m the number of columns
  
Outputs:

    -A is a matrix that follows the above rules
    
    -An error will be thrown if two arguments are not inputted
