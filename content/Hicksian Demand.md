#Econ/Micro 

This is also a question in [[Consumer Theory]]

Normally, from the [[Consumer Theory]], we are studying the [[Marshallian Demand]] question, i.e., given prices and income, what is the optimal consumption bundle that maximizes the utility.

So this is also why we say this is a dual (对偶) perspective, because in the [[Marshallian Demand]], we are maximizing utility given budget constraint, while in the [[Hicksian Demand]], we are minimizing expenditure given utility constraint. Formally, it is:

$$
\min_{h \in \mathbb{R}^L_{+}} \sum_{\ell = 1}^L p_{\ell} h_{\ell} \quad \text{s.t.} \quad u(h) \geq U
$$

Here $h$ means the consumption bundle in the [[Hicksian Demand]] context. (We use $x$ to denote consumption bundle in the [[Marshallian Demand]] context).

Notice that $h(p_{1}, \dots, p_{L}) = x(p_{1}, \dots, p_{L}, e(p,u))$, where $e(p,u)$ is the expenditure function that tells us the minimum expenditure needed to achieve utility level $u$ at prices $p$.

A relationship between $h$ and $x$: 

$$
\frac{\partial e(p,u)}{\partial p_{\ell}} = h_{\ell}(p,u) = x_{\ell}(p, e(p,u))
$$

The intuition behind this equation is that, the change in expenditure with respect to price change is equal to the quantity demanded of that good in the [[Hicksian Demand]] context, which is also equal to the quantity demanded of that good in the [[Marshallian Demand]] context when income is set to the minimum expenditure needed to achieve utility level $u$.

The proof method is so called [[Envelope Theorem]]. But in this page, we mainly care about what we could use these equations to derive the [[Slutsky Equation]].

## [[Slutsky Equation]]

Two key words: [[Income Effect]] and [[Substitution Effect]]

Recall that $h(p_{1}, \dots, p_{L}) = x(p_{1}, \dots, p_{L}, e(p,u))$, and it is then obvious that $w= e(p,u)$.

We do the following:

$$

$$
