#' Function to compute chi-squared independent samples test
#' @param X vector or matrix of data
#' @param full If TRUE, return structure of additional data. False (defulat)
#' returns only the statistic.
#'
#' @return Named number of chi-squared value
#'
#' @example
#' d = chisq.indep.test(X)
#'
#' @export

chisq.indep.test <- function(X, full = FALSE){
  N <- sum(X)
  E <- matrix(data =(rowSums(X) %o% colSums(X)) / N,
              nrow = nrow(X), ncol = ncol(X))
  x2 = sum(((X - E)^2) / E)
  if (full != FALSE){
    d = structure(list(
      observed = X,
      expected = E,
      chisq = x2
    ))
    return(d)
  }
  else {
    return(c("Chi-squared" = x2))
  }
}
