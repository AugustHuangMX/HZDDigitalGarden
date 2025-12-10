#LSE/EC484_Econometrics_Analysis 

# # [[Chebyshev Inequality]]

The Chebyshev Inequality provides a bound on the probability that a random variable deviates from its mean by more than a specified number of standard deviations. It is particularly useful because it applies to any probability distribution with a finite mean and variance, regardless of the distribution's shape.

The statement of [[Chebyshev Inequality]] is:

**Theorem** For any random variable $z_{n}$ and constant $\delta>0$, it holds

$$
\Pr(|z_{n} - \mathbb{E}[z_{n}] > \delta) \leq \frac{\text{Var}(z_{n})}{\delta^2}
$$

By setting $z_{n} = \bar{y}$, we could have $\mathbb{E}[z_{n}] = \mathbb{E}[y]$, and $\text{Var}(z_{n}) = \frac{\sigma^2}{n}$.

>  Why we have $\text{Var}(z_{n}) = \frac{\sigma^2}{n}$?
>  Because from the definition of variance, we have:
>  $$
  \text{Var}(\bar{y}) = \text{Var}\left( \frac{1}{n} \sum_{i=1}^{n} y_{i} \right) = \frac{1}{n^2} \sum_{i=1}^{n} \text{Var}(y_{i}) = \frac{n \sigma^2}{n^2} = \frac{\sigma^2}{n}$$

Thus we could use it to derive [[Weak Law of Large Numbers]]

## Proof

Pick arbitrary $\delta > 0$, let $F_{n}(u)$ be distribution function of $z_{n} - \mathbb{E}[z_{n}]$, then: 

$$
\Pr(|z_{n} - \mathbb{E}[z_{n}]| > \delta) = \Pr((z_{n} - \mathbb{E}[z_{n}])^2>\delta^2)
$$

We let $u = z_{n} - \mathbb{E}[z_{n}]$, then:

$$
= \int_{u^2>\delta^2} dF_{n}(u)
$$