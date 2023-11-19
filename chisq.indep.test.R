#' Function to compute chi-squared independent samples test
#' @param X vector or matrix of data
#' 
#' @return Named number of chi-squared value
#' 
#' @example chisq.indep.test(X)
#' 
#' @export

chisq.indep.test <- function(X){
  N <- sum(X)
  E <- matrix(data =(rowSums(X) %o% colSums(X)) / N, 
              nrow = nrow(X), ncol = ncol(X))
  x2 = sum(((X - E)^2) / E)
  return(c("Chi-squared" = x2))
}