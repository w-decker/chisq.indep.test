# chisq.indep.test
Chi-squared test of independence

# In R

To use in R, type the following:

```r
devtools::install_github("w-decker/chisq.indep.test")
```

# In Python

To use in Python, download [chisq_indep_test.py](chisq_indep_test.py). Add the file to your current workding directory. Then import the function via the following code:

```py
from chisq_indep_test import chisq_indep_test as cit
```

What's great about the Python version is that you can specify an input to the argument `fancy=`, which will output the code in $\LaTeX$-esque format. However, this only works inside a Jupyter Notebook. The output would look something like this:

$$
\chi^2 = 6.03532
$$

# In MATLAB

To use in MATLAB, download [chisq_indep_test.m](chisq_indep_test.m). Then add the file to your MATLAB path via the following code:

```MATLAB
addpath "downloads/chisq_indep_test.m"
```
