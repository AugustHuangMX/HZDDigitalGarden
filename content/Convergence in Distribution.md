#LSE/EC484_Econometrics_Analysis 

While [[Weak Law of Large Numbers]] is useful to understand the [[Convergence in Probability]], it does not tell us how to give approximation to *distribution* of estimator. [[Asymptotic Approximation]] can be obtained by this, [[Convergence in Distribution]].

## Definition

Let $z_{n}$ be a random *vector* with cdf $F_{n}(u) = \mathbb{P}(z_{n }\leq u)$. We say that $z_{n}$ converges in distribution to $z$, if

$$
F_{n}(u) \to F(u) \quad \text{as} \quad n\to \infty
$$

for all $u$ where $F(u) = \mathbb{P}(z\leq u)$ is continuous.

We could denote as $z_{n} \to^d z$.


Intuitively, as $n$ becomes larger, the shape of the sample distribution of $z_{n}$ becomes closer to that of $z$.

The very classical example is the [[Central Limit Theorem]].