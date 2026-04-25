#macro 

The [[Calvo Price]] is a core mechanism from the [[NK-DSGE]], 

## Rules

Firm change price with probability $1-\theta$. The ability to change price is completely random. This directly let the firms side not symmetric.

At time $t$, set price $P_{it}^*$ to max present value of dividends

$$
P _ {i t} ^ {*} = \arg \max _ {P _ {i, t}} \sum_ {k = 0} ^ {\infty} \theta^ {k} \mathbb {E} _ {t} Q _ {t, t + k} \left(P _ {i, t} Y _ {i, t + k} - W _ {t + k} L _ {i t + k}\right)
$$
Subject to 
$$
Y _ {i t + k} = \left(P _ {i t} / P _ {t + k}\right) ^ {- \epsilon} C _ {t + k} \quad \text{and} \quad Y _ {i, t + k} = A _ {t + k} L _ {i t + k} ^ {1 - \alpha}
$$

Here $\theta^k$ means the **Probability** of being stuck at the price level. Once once I am able to change the price, I will set a new $P^*$.

I Define $\Psi _ { t + k } \left( Y _ { t + k | t } \right)$ as costs at $t { + } k$ for firm that set prices at t

$$
\max \sum_ {k = 0} ^ {\infty} \theta^ {k} \mathbb {E} _ {t} Q _ {t, t + k} \left(P _ {t} ^ {*} Y _ {t + k | t} - \Psi_ {t + k} \left(Y _ {t + k | t}\right)\right) s. t. Y _ {t + k | t} = \left(\frac {P _ {t} ^ {*}}{P _ {t + k}}\right) ^ {- \epsilon} C _ {t + k}
$$

