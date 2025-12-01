#Econ/Micro #LSE/EC487_Advanced_Microeconomics

Before coming to the [[Welfare Theorem]], it is important to recall the [[Pareto Optimality]] concept.


### Proof of =>

$$
(x^*)^N_{j=1} \text{ is Pareto Optimal } \exists p \in \mathbb{R}^L_{+} \text{ s.t. } x^*_j \text{ solves } \max_{x_j \in X_j} p \cdot x_j \quad \forall j
$$


# [[Welfare Theorem]]

Long story short, there are two [[Welfare Theorem]]:

1. [[Competitive Equilibrium]] is Pareto Efficient.
2. Any Pareto Efficient allocation can be an equilibrium.

The first one: Suppose by contradiction, an improvement could be found

$$
\exists  \bar{x} \text{feasible}
$$

$$
\begin{align}
u^j(\bar{x}^j) \geq u^j (x^{*j}) \implies \sum_{\ell = 1} p_{\ell} \bar{x}^j_{\ell} \geq \sum_{\ell = 1} p_{\ell} x^{*j}_{\ell} \quad \forall j \\
u^k(\bar{x}^k) > u^k (x^{*k}) \implies \sum_{\ell = 1} p_{\ell} \bar{x}^k_{\ell} > \sum_{\ell = 1} p_{\ell} x^{*k}_{\ell} \quad \text{ for some } k

\end{align}
$$

$$
\sum_{j=1}^N\sum_{\ell = 1}^L p_{\ell} e_{\ell}^j \geq  \sum_{j=1}^N\sum_{\ell = 1}^L p_{\ell} \bar{x}^{j}_{l} \geq \sum_{j=1}^N\sum_{\ell = 1}^L p_{\ell} x^{*j}_{\ell} = \sum_{j=1}^N\sum_{\ell = 1}^L p_{\ell} e_{\ell}^j
$$

If feasible, the total spent must be less than what was owned before.


To prove the second one, we need to apply [[Hyperplane Separation Theorem]].




---

- [[Hyperplane Separation Theorem]]
