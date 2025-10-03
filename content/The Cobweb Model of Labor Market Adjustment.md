The Cobweb Model, or cobweb model, is a model in economics that describes the process by which prices and output adjust over time in certain markets, and it is particularly applicable to markets where there is a *time lag* in supply and demand responses. In the labor market, the [[Cobweb Model]] can be used to explain how wages and employment levels interact and adjust over time.

# The [[Cobweb Model]] of Labor Market Adjustment

## The Basic Model

If the wage rate goes up suddenly in a given year, the supply of graduate related students would not be affected until 3 or 4 years later (owing to the time it takes to learn the field). The basic model is like this:

$$
L^s_{t+j}=L(w_t) \implies L^s_{t}=L(w_{t-j})
$$

If $j>1$, it would be too hard to analyze, so let set $j = 1$.

Accordingly, employment level may be based on the last period's wage rate. We suppose that supply function is given by:

$$
L_t = a_2+b_2 w_{t-1}
$$

### In a numerical example

Lets say **Labour Demand:** $W_t = 85-\frac{5}{6}L_t$ **Labor Supply:** $L_t  = -15+0.6W_{t-1}$ , $W_0 = 50$ . 

In the LR, $W_t = W_{t-1}= W^{ * }$, so we could find the LR equilibrium: $W^{ * }= 65$, $L^{ * } = 24$

But actually it is a iterated period. We have to calculated period 1, period 2 and so on. It does no immediately move to the equilibrium.

![[截屏2023-12-10 17.04.26.png|500]]

## Definitions & Stability Conditions of Difference Equations

### The First Order Difference Equation

In general (equation): 

$$
y_t=a+by_{t-1}
$$
This is the first order difference equation. In the case of a [[Cobweb Model]], 

**Demand:** $L_t=c+d\times W_t$

**Supply:** $L_t=g+h\times W_{t-1}$

In equilibrium, $W_t = \frac{g-c}{d}+\frac{h}{d}W_{t-1}$ 

So, We could conclude that: $W_t = y_t$, $a=\frac{g-c}{d}$, $b=\frac{h}{c}$.

### Stability Conditions:

If $|b|<1 \implies$ Stable


---

## Exercise

[[ECON4006 Final 2022]]

