#suppose (xi, yi), 1<i<n are a collection of data points 
#the goal is to find a line of the form y= ax+b such that 
#the total error is minimized 

best.line.totalerror=function(x,y){
  n=length(x) #this has to be the first command
  lin.fun=c(0,0, rep(1,n))
  A.upper=cbind(x, rep(1,n), -diag(n))
  A.lower=cbind(x, rep(1,n), diag(n))
  A=rbind(A.upper, A.lower)
  ineq=c(rep("<=",n), rep(">=",n)) #vector of ineq directions
  rhs=c(y,y)
  lp("min", lin.fun, A, ineq, rhs)$solution[1:3]
  #only interested in the a and the b 
}


#lpsolve package must be installed to use program