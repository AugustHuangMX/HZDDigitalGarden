Like [[Law of Large Numbers]], it is also a tool for asymptotic analysis.

The core idea of this theorem is that **When you add together a large number of random variables, regardless of their individual distributions, their sum (or mean) will tend towards a normal distribution.**

## Formal Statement 

Suppose we have an i.i.d random variables: $X_1, X_2, \dots, X_n$ 

The sample mean is defined as:

$$
\bar{X}_{n} = \frac{1}{n} \sum_{i=1}^{n} X_i
$$

The expected value of each $X_{i}$ is $\mathbb{E}[X_{i}] = \mu$, with expected [[Variance]] $\text{Var}(X_{i}) = \sigma^2 < \infty$.

From [[Law of Large Numbers]], we know that as $n \to \infty$, $\bar{X}_{n} \to^p \mu$.

We the normalize it:

$$
Z_n = \frac{\sqrt{n}(\bar{X}_{n} - \mu)}{\sigma}
$$

And we would know that:

$$
Z_{n} \to^d N(0,1)
$$

