#Econ/Macro 

The [[Bellman Equation]] is a fundamental concept in dynamic programming and optimal control theory. It provides a recursive decomposition of the value function, which represents the maximum value that can be achieved from a given state. It has some very good properties, compared with the lagrangian method, the "Old fashioned" way.

1. You don't need to calculate entire path period by period.
2. You can solve the problem backwards, which is very useful in many cases.


$$
V(\hat{x_{0}}) = \max_{\{\alpha_{t}\}^\infty_{t=0}} \sum_{i=1}^{N} \beta^t r(x_{t} , \alpha_{t})
$$

subject to

$$
x_{t+1} = g(x_{t}, \alpha_{t})
$$


## Application : Consumption-Saving Problem:

Assume that income is deterministic and constant $y_{t} = y$.

$$
\begin{align}
\max_{\{a_{t+1}\}}
\end{align}
$$

>  The interesting part here is the $a'$ doesn't denote the derivative, but the next period's variable. 


---

- [ ] Practice in [[Growth Model]]
- [ ] What is policy variable?
- [ ] How to understand $\ell$?
- [ ] 