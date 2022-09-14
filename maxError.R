#suppose (xi, yi), 1<i<n are a collection of data points 
#the goal is to find a line of the form y= ax+b such that 
#the maximum error is minimized

best.line.min.max=function(x,y){
  n = length(x)
  lin.fun= c(0,0,1)
  A.upper = cbind(x, rep(1,n), rep(-1,n))
  A.lower = cbind(x, rep(1,n), rep(1,n))
  A = rbind(A.upper, A.lower)
  ineq = c(rep("<=",n), rep(">=",n))
  rhs = c(y, y)
  
  
  lp("min", lin.fun, A, ineq, rhs)$solution[1:3] 
  
}

#lpsolvepackage must be installed to use this program

best.line.min.max(x,y)
curve(0.6597938*x + 0.6690722, add=T, col="blue")