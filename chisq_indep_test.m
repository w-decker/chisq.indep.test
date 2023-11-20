function [c] = chisq_indep_test(X)
%CHISQ_INDEP_TEST Function to compute chi-squared independent samples test
%
%   X N-N Dimensional array of data
%   
%   C = chisq_indep_test(X)


N = sum(X, "all");
E = (sum(X, 1) .* sum(X ,2)) ./N;
c = sum((((X - E)^2) ./ E), "all");

sprintf("Chi-squared = %.5f", c)

end


