#suppose (xi, yi), 1<i<n are a collection of data points 
#the goal is to find a line of the form y= ax+b 
#using the least squares method 

least.square = function(A, b){
  b = matrix(b)
  x = inv(t(A)%*%A)%*%(t(A)%*%b)
  x
}
best.line.squares = function(x,y){
  n = length(x)
  A = cbind(x,rep(1,n))
  answer = least.square(A,y)
  as.vector(answer)
}

#the pracma package must be installed to use this program

