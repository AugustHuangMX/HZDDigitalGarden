#Econ/Macro 

Growth model is deigned to be model of capital accumulation process.

A feasible allocation for the [[Growth Model]] is a list of sequence $\{c_{t},h_{t},k_{t}\}^\infty_{t=0}$ such that:

$$
c_{t} + k_{t+1} = F(k_{t},h_{t}) + (1-\delta)k_{t}
$$

where,

$$
0\leq h_{t} \leq 1, c_{0}\geq 0, k_{t}\geq 0, k_{0}  = \hat{k_{0}}
$$

>  $F (k,h)$ is the [[Aggregate Production Function]], if still hard to remember, you could see it as $Y$. $k$ is the capital input, $h$ is the labor input, $\delta$ is the depreciation rate.




# In Continuous Time 

In continuous time setting, we no longer use $\sum$, instead, we use $\int$.

For a representative household, its utility function would be:

$$
\int_{0}^{\infty} e^{-\rho t} u(c(t)) dt
$$

In a continuous case, the **Pareto optimal allocation** is the solution to the following problem:

$$
V(\hat{k_{0}}) = \max_{\{c(t)\}_{t=0}^{\infty}} \int_{0}^{\infty} e^{-\rho t} u(c(t)) dt
$$

subject to: $\dot{k}(t) =f(k(t))-\delta k(t)-c(t),k(0)= \hat{k_{0}}$

This is also [[Law of Motion]]


> $V(\hat{k_{0}})$ is a value function, it represents the maximum lifetime utility a household could achieve under a given initial value of capital stock $\hat{k_{0}}$.

In a simple optimization problem, suppose $\max_{x} F(x)$, we can just take a derivative and set it to zero, i.e. $F'(x) = 0$.

However, in a dynamic optimization problem, we are not maximizing over a single variable $x$, instead, we are maximizing $c(t)$, which is a function of time $t$. So we need to use the [[Hamiltonian]] method.

In short, Loci are curves that things stop changing.


