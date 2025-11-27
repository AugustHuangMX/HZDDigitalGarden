#Econ/metrics #LSE/EC484_Econometrics_Analysis

In a classical model, it is easy to have:

$$
Y = X'\beta + e
$$

where $\mathbb{E}[e|X] = 0$. 

The intuition to study [[Quantile Regression]] is that, sometimes we want to study the impact of $X$ on different parts of the distribution of $Y$, not just the mean. For example, how does education affect the lower quantiles of income compared to the upper quantiles? We might be interested in the median $\text{med}[Y|X] = X'\beta_{M}$ or even a more general quantile $\mathbb{Q}_\tau[Y|X] = X'\beta_{\tau}$, where $\tau \in (0,1)$. 

## Conditional Quantile

Let $F_{Y|X} (y|x)$ be conditional cdf of $Y$ given $X=x$, then the conditional quantile function is defined as:

$$
q_{\tau}(x) = \inf \{a: F_{Y|X}(a|x) \geq \tau\}
$$

>  If you find hard to understand the interpretation of $F_{Y|X} (y|x)$, you could refer to this page: [[Cumulative Distribution Function]]

After defining the cdf, it's easy to know the concept of **quantile**. The $\tau$ -th quantile is the value below which a fraction $\tau$ of the distribution falls. For example, the median is the 0.5 quantile, which also means $F(y) = 0.5$. The 0.25-quantile means $F(y) = 0.25$, i.e., 25% of the distribution falls below this value. Suppose your exam score is at 90%  quantile, it means you scored better than 90% of the students (90% of students score lower than you).

### The Transform Property 

 For weakly increasing transform $T(y)$, we have:

$$
\mathbb{Q}_\tau[T(Y)|X] = T(\mathbb{Q}_\tau[Y|X])
$$

Example: Suppose $\tau = 0.5$ and 



## The [[Median Regression]]

The median regression:

$$
Y = X'\beta + e, \ \text{med}[e|X]= 0
$$

This also implies: $\text{med[Y|X]} = X'\beta$

### The implication of $\text{med}[e|X]= 0$

$$
\begin{align}
\text{med}[e|X] = 0  \\
\iff \mathbb{P}[e<0|X] = \mathbb{P}[e\geq 0 ] = 1/2 \\
\iff \mathbb{E}[\mathbb{I}\{e<0\}|X] = 1/2 \\
\iff \mathbb{E} [\text{sgn}(e)|X] = 0
\end{align}
$$

Thus we only care about the sign of the error term in median regression (whether it is positive or negative). It quite makes sense because the median of error (conditional on $X$) mean that half of the errors are positive and half are negative.

$$
\begin{align}
\mathbb{E} [\text{sgn}(e) | X] = 0
\end{align}
$$

By Law of Iterated Expectations, we have:

$$
\mathbb{E} [ X \text{sgn}(e)] = 0
$$

Now it becomes a unconditional moment restriction. We could use:

$$
\frac{1}{n} \sum_{i=1}^{N} X_{i} \text{sgn}(Y _{i} - X_{i}'\hat{\beta}) = 0 
$$

Thus the [[Median Regression]]  have really nice property because it is robust to outliers in $Y$. Even the outliers have some extreme magnitude, it only contributes $\pm 1$ to the sign function.

### The Least Absolute Deviation (LAD) Estimator


The thicker tails for the laplace distribution shows that the median regression is more tolerant than OLS.

---

# Todo [[List]]

- [ ] How to understand Laplace?
- [ ] Review of Maximum Likelihood Estimator 
- [ ] 