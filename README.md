# chisq.indep.test
Chi-squared test of independence

# What is $\chi^2$?

Let's say you role a six-sided die 6000 times. If we calculated the probability of rolling a '6' in one role by following the below equation...

$$P(A) = \frac{\text{outcomes of A}}{\text{total outcomes possible}}$$

We get 

$$ P(A) = \frac{1}{6} $$

Where $A$ is the probability of rolling a '6' in a single role. Now do this for all 6000 rolls. We _expect_ to role each possible face on the die 1000 times. This is the expected outcome. But this is unlikely. What happens if we role a '6' 4000 times out of all 6000 total rolls? Is the die okay? How does this distribution compare to the expected distribution. We can assess this frequency distribution is different from 0 using the $\chi^2$ _Goodness of Fit_ test. Which follows the equation below...

$$\chi^2 = \sum\limits_{j}^{k} \frac{(f_{0,j} - f_{1, j})^2}{f_{0,j}}$$

$f_0$ is your expected distribution and $f_1$ is your observed distribution. 

However, the _Goodness of Fit_ test really only works when there is a known or expected distribution. If you want to examine the efficacy the distribution of two independent samples, you must use the _Independent Samples_ test. This follows a similar procedure conceptually but is represented by the following equation.

$$\chi^2 = \sum\limits_{j}^{k} \frac{(F_{0,j} - F_{1,j})}{F_{0,j}} $$

Where $F_0$ (your expected values) is represented by

$$F_0 = \frac{(R * C)}{N} $$

Such that $R$ is the row sums of $F_1$, $C$ is the column sums of $F_1$ and $N$ is the total number of observations. 

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
