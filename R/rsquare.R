rsquare <- function(example,strains){
	Y = matrix(example,nc=1)
	J = matrix(1,nr=length(example),nc=length(example))
	n = length(example)
	X = as.matrix(model.matrix(~ -1 + factor(strains)))
	b = solve(t(X)%*%X)%*%t(X)%*%Y
	SSTO <- t(Y)%*%Y - t(Y)%*%J%*%Y / n
	SSE = t(Y)%*%Y - t(b)%*%t(X)%*%Y
	rSquare = 1 - SSE/SSTO
	return(rSquare)
	}
