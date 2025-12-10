#LSE/EC484_Econometrics_Analysis 

**Theorem** Suppose $\{y_{i}\}_{i=1}^n$ is a sequence of i.i.d. random variables with finite expected value ($E|y|<\infty$), then 

$$
\bar{y} = \frac{1}{n} \sum_{i=1}^n y_{i} \to^p \mu = E[y_i]
$$

as $n \to \infty$.

We could prove it by [[Chebyshev Inequality]].

---

## Vector Case 

WLLN can be extended to the case where $y \in \mathbb{R}^m$.

**Definition** A sequence of random vectors $z_{n} \in \mathbb{R}^k$ converges in probability to $z$ as $n \to \infty$, denoted as $z_{n} \to^p z$, if for every $\delta > 0$, 

$$
\lim_{ n \to \infty } \mathbb{P}(||z_{n} -z||>\delta) = 0
$$

The difference part is that we introduce $||\cdot||$ here, which we called **norm** of a vector. It's described as the "distance" between two vectors.

Here we only mention a very famous inequality, which is:

$$
||a+b|| \leq ||a|| + ||b||
$$

