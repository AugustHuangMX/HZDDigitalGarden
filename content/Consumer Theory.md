#Econ/Micro 

# Framework

Some basic settings:

- Prices: $(p_{1},\dots, p_{L}) \in \mathbb{R}^L$
- Consumption bundles: $x = (x_{1},\dots, x_{L}) \in \mathbb{R}^L$
- Budgest $w \geq 0$
- The demand curve: $x(p_{1} \dots p_{L},w) \in \mathbb{R}^L$

> A simple explanation for Consumption Bundle: A consumption bundle is a specific combination of goods and services that a consumer chooses to purchase and consume. It represents the quantities of different items that make up the total consumption of an individual or household. It could be understood like there are $L$ different goods in the market, and a consumption bundle specifies how much of each good the consumer decides to buy. For example, a consumption bundle might consist of 2 units of good 1, 3 units of good 2, and 1 unit of good 3, represented as $(2, 3, 1)$. $x_{i}$ here means quantity.

Thus it is easy to come up with a **Constrained Utility Maximization** problem. The constraint here is your budget constraint:

$$
x(p_{1}, \dots ,p_{L}) \in \max_{x \in \mathbb{R}^L_{+}} u(x) \quad \text{s.t.} \quad p \cdot x \leq w
$$
the constraint could also be written as $\sum_{\ell = 1}^L x_{\ell} p_{\ell} \leq w$, where $u: \mathbb{R}^L_{+} \to \mathbb{R}$ is the utility function.


> [!example]  Definition 
> Utility is quasi-concave if $u(\alpha x + (1-\alpha)y) \geq \min{u(x), u(y)}$ for all $\alpha \in [0,1]$


This definition could also be found [[EC451#^2c22e9|here]].

There is an exercise that to show that **strict** quasi-concavity implies that there exists a unique utility-maximizing demand function $x^* (p,w)$.







