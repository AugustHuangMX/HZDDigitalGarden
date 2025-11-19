[[EC417 Advanced Macroeconomics]]

# Problem Set 1

## Question 1

1. In the context of the growth model, define a sustainable level of the capital stock to be a value of $k$ such that if $\hat{k}_0 = k$ then $k_t = k$ for all $t$ is feasible.

(a) Prove that the set of sustainable capital stocks is given by an interval $[0, \hat{k}]$ for some value $\hat{k}$. Derive an expression that implicitly defines $\hat{k}$.

(b) Each sustainable level of capital $k$ is associated with a sustainable level of consumption, defined by the function $c^S(k) = f(k) - \delta k$. Prove that the function $c^S(k)$ is single peaked. Derive an implicit expression for the value of $k$ at which $c^S(k)$ attains its maximum. This is what is referred to in the literature as the golden rule level of the capital stock. Denote it by $k^G$.

(c) Let $k^*$ be the steady state level of the capital stock corresponding to the Social Planner's problem that we considered to find Pareto efficient allocations. Show that $k^* < k^G$. If we let $c^*$ and $c^G$ denote the corresponding levels of consumption, it follows that $c^* < c^G$. Note that $c^G$ is the highest sustainable level of consumption in this economy. If we started the economy with $k_0 = k^G$, it is feasible to have consumption of $c^G$ forever by maintaining capital at $k^G$ forever. Given that $c^G$ is the highest sustainable level of consumption, this would seem to be an appealing outcome. Explain why it is that the Social Planner does not choose this option.

*Answer*:

$\max c^s(k)$, $k^{\text{Golden Rule}}$ ,

$$
f'(k^G) - \delta = 0 \implies f'(k^G) = \delta
$$


### （C）

$$
u'(C^*) = \beta u'(C^*)(f'(k^*) + 1 - \delta)
$$

$$
\frac{1}{\beta} = f'(k^*) + 1 - \delta
$$

We then rearrange this:

$$
f'(k^*) = \frac{1}{\beta} - 1 + \delta
$$

We had that  $f'(K^G) = \delta$, and $f'(k^*) = \frac{1}{\beta} -1 +\delta$

Thus 

$$
f'(k^*) - f'(k^G) = \frac{1}{\beta} - 1 > 0
$$

which is positive. Suppose $\beta = 1$, where consumers are equally patient, then there's no difference. 

So we can answer that why we couldn't reach the Golden Rule level of capital in the steady state is because consumers are impatient, $\beta < 1$.


---

## Question 2

Consider the Social Planner’s problem that we considered in class. We assumed that the function $f(k)$ is strictly concave and satisfies the Inada conditions. This question asks you to consider the case where $f(k) = Ak$.

(a) Formulate the Social Planner’s problem and derive first order conditions.

(b) Argue that the Social Planner’s problem will not have a positive steady state value of $k$ except under very special conditions, and that if it has one positive steady state then all positive values of $k$ are steady states.

*Answer*: 

Since $f(k)= Ak$, we have the FOC that $f'(k) = A$, SOC is $0$ since $f''(k) = 0$.

What we want to do it to solve:

$$
\max_{\{K_{t+1}\}^\infty_{t=0}} \sum_{t=0}^{\infty} \beta^t u(AK_{t} + (1-\delta)K_{t} -K_{t+1})
$$

subject to $0 \leq K_{t+1} \leq Ak_{t} +(1-\delta)k_{t}$ and $K_0$ given.

Given $k_{0}$, we could get the [[Euler Equation]]:

$$
u'(Ak_{t}+(1-\delta)k_{t} - k_{t+1}) = \beta u'(Ak_{t+1} + (1-\delta)k_{t+1} - k_{t+2}) (A+(1-\delta))
$$

$$
k_{t+1} = k_{t} = k^* \implies k^* = Ak^* + (1-\delta)k^* - k^*
$$







---


## Question 3

Consider the following linear dynamical system:
$$x_{t+1} = (1 - \alpha)x_t + \lambda(1 - x_t),$$
where $0 < \alpha < 1$, $0 < \lambda < 1$, and $0 \le x_0 \le 1$.

This type of dynamical system can arise in many economic situations of interest. For example, some models of labor market dynamics produce this type of equation for the evolution of the unemployment rate. In this context $x_t$ would be the unemployment rate in period $t$, $\alpha$ would represent the fraction of unemployed workers that find jobs in each period, and $\lambda$ would represent the fraction of employed workers that lose their jobs each period.

(a) Show that $0 \le x_t \le 1$ for all $t$.

(b) Determine how many steady states the above equation has. Solve for these steady states in terms of the parameters $\alpha$ and $\lambda$.

(c) Show that starting from any $x_0$ that the sequence of values for $x_t$ will converge to a steady state value. 

*Answer*: 

### (a)

We could easily rearrange this to 