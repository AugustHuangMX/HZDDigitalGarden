If $C_{k} \sim \chi_{k}^2$ and $Z \sim N(0,1)$ are independently distributed, then 

$$
T_{k} = \frac{Z}{\sqrt{ \frac{C_{k}}{k} } }
$$

Is $t_{k}$ distributed.


We could consider [[Student's t-test]] as an extension of [[Normal Distribution]]

Construct the z-score:

$$
z = \frac{b-\beta_{0}}{\sqrt{ Var(b) }}
$$

^acd1c6

As a *test tool* to test the hypothesis that $\beta = \beta_{0}$ (See [[Hypothesis test]]). But this is valid only when we know the disturbance [[Variance]], which is $\sigma^2$.


# Application

The question is we usually don't know the disturbance variance, so we have to estimate it. An unbiased estimator of the error variance, $\sigma^2$, is:

$$
\hat{\sigma^2} = s_{e}^2 = \frac{ \sum e_{i}^2 }{n-2} = \frac{SSR}{n-2}
$$

Using this we could obtain the unbiased estimator of the variance of $b$ as:

$$
s_{b}^2 = \frac{s_{e}^2}{\sum(x_{i}-\bar{x})^2}
$$

We set up a formal test:

- $H_{0}: \beta = \beta_{0}$: The null hypothesis
- $H_{1}:\beta \neq \beta_{0}$: The alternative hypothesis.

Recall the the test statistic of [[Student's t-test]]: [[#^acd1c6]]

$$
z = \frac{b-\beta_{0}}{\sqrt{ Var(b) }}
$$

Now becomes:

$$
t = \frac{b-\beta}{s_{b}}
$$

Recall that the [[Student's t-test]] follow the distribution with $n-2$ degrees of freedom. That is $t \sim t_{n-2}$

## Confidence Interval

The $95\%$ [[Confidence Interval]] for $\beta$ is given by:

$$
b \pm s_{b} \times c_{.025}
$$

>  Recall that we it is a two-sided test, so we use .025

