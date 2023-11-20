import numpy as np
from IPython.display import Math, display

def chisq_indep_test(X, fancy=False):
    """Function to compute chi-squared independent samples test
    
    Parameters
    ----------
    X : ndarray
        Vector or matrix of data

    fancy : bool, default : False
        If true, display output as LaTeX. Only functional in Jupyter Notebook

    Output
    ------
    Chi-squared value
    """
   
    N = np.sum(X)
    E = np.divide(np.multiply(X.sum(axis=0), X.sum(axis=1)), N)
    x2 = np.sum(np.divide(((X - E)**2), E))

    if fancy is True:
        return(display(Math('\\chi^2 = %.5f' % x2)))
    else:
        return(f'Chi-squared = %.5f' % x2)