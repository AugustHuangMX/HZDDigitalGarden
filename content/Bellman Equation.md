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



## Stochastic Dynamic Programming

Recall the sequence formulation of household problem:

$$
\begin{align}
\max_{\{a_{t+1}\}^\infty_{t = 0}} \mathbb{E}_{0} \sum_{t=0}^\infty \beta^t u(c_{t}) \\
\text{subject to} \\
c_{t} + a_{t+1} \leq y_{t} + (1+r) a_{t}  \\
a_{t+1} \geq \underline{a} \\
a_{0} \text{is given} 
\end{align}
$$

Thus we could have the recursive formulation for Bellman equation:

$$
V(a,y) = \max_{c,a'} u(c) + \beta \mathbb{E} [ V(a',y') | y ]
$$

subject to $c+ a' < y+ Ra$ and $a' \geq \underline{a}$

The policy functions here are $a' = g(a,y)$ and $c = h(a,y)$.

 > What is a policy function? Here the policy isn't the government policy, but the decision rule that tells us how much to consume/save given the current state (wealth level).
 
 We could use a *cash-on-hand* method to simplify it: we let $x = y+ Ra$, then $x$ is a state variable which denotes your wealth received at the beginning of the period. 

Then, one nice thing that could happen is we could use $s$ to denote the savings, thus $x' = Rs + y'$.

> One thing important here is we have to assume $y$ is i.i.d. Because only it is i.i.d., the previous value $y$ doesn't provide any information to $y'$, so we don't need to track it in the state variable. In this setting, we only care about $x$!

Thus our [[Bellman Equation]] becomes: 

$$
\begin{align}
V(x) = \max_{c,s} u(c) + \beta \mathbb{E} [ V(Rs + y') ] \\
\text{subject to} \\
c+ s \leq x \\
s\geq  \underline{a}
\end{align}
$$

We could then use [[Largrangian Multiplier]] method to solve it:

$$
\begin{align}
V(a,y)  = \max_{c,a'} u(c) + \beta  \mathbb{E}[V(a',y'|y)] + \lambda[y+(1+r)a-c-a'] + \mu [a' - \underline{a}] \\
\text{subject to } \mu\geq_{0}, \lambda \geq 0
\end{align}
$$

Taking the FOC, we get:

$$
\begin{align}
u'(c) = \lambda \\
\beta \mathbb{E}[V_{a} (a',y') | y] = \lambda - \mu
\end{align}
$$

From [[Envelope Theorem]], we have:

$$
V_{a}(a,y) = \lambda (1+r)
$$

In the next period, it becomes:

$$
V_a(a', y') = \lambda'(1+r)
$$


Thus we could use this to substitute back to the FOC:

$$
\lambda - \mu = \beta (1+r) \mathbb{E}[\lambda' | y]
$$

and

$$ 
u'(c) = \beta (1+r) \mathbb{E}[u'(c') | y] + \mu
$$

So the [[Euler Equation]] is easy to get from here!

$$
u'(c) \geq \beta (1+r) \mathbb{E}[u'(c') | y]
$$

Because $\mu \geq 0$




---

- [ ] Practice in [[Growth Model]]
- [ ] What is policy variable?
- [ ] How to understand $\ell$?
- [ ] 