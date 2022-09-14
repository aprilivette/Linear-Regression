#best fit line examples, total error vs. minimized maximum error

#example 1
x=iris[1:50, ]$Sepal.Length
y=iris[1:50, ]$Sepal.Width

plot(x,y)
best.line.totalerror(x,y)
best.line.min.max(x,y)
best.line.squares(x,y)

curve(0.685185185*x, add=T, col="red")
curve(0.6597938*x, add=T, col="blue")
curve(0.7985283*x+-0.5694327, add=T, col="green")

#example 2
i=women$height
j=women$weight

plot(i,j)
best.line.totalerror(i,j)
best.line.min.max(i,j)
best.line.squares(i,j)

curve(2.076923*x, add=T, col="red")
curve(2.145038*x, add=T, col="blue")
curve(3.45000*x-87.51667, add=T, col="green")

