#Econ/Macro 
# Economic Growth 

1. [[Solow Model]]
- There is a steady state level of output (for a constant $A$)
- There is a balanced growth rate of output. (When $A$ grows over time)
1. [[Ramsey Model]] (*for a constant* $A$ *or* $N$)
- Centralized version (**optimal allocation**)
- Decentralized version (**market allocation**)
	- [[Perfect Competition]] (efficient)
	- Monopolistic Competition ([[Market Failure]]) 
1. [[Romer Model]]

# The Model 

There are a few components:

1. Households (provide $K$, $L$)
2. Intermediate Good (provide $X_{i}$)
3. Final Good

Key part is that we introduce R&D sector here, which means the "Research and Development". They are aiming to increase $N$

In the monopolistic [[Ramsey Model]], $N$ is a constant. In the [[Romer Model]], R&D entrepreneurs develop new product. So that $N$ increases over time => [[Economic Growth]].

- Final-good production function: $Y = L_{Y}^{1-\alpha} \sum_{i=1}^N X_{i}^\alpha$
- Resource constraint on capital: $K=\sum_{i=1}^N X_{i} = NX_{i}$
- [[Cobb-Douglas Production Function]]: $Y = L_{Y}^{1-\alpha}N\left( \frac{K}{N} \right)^\alpha$

By defining $A = N^{1-\alpha}$, we get that: 

$$
Y = N^{1-\alpha}K^\alpha L_{Y}^{1-\alpha}
$$
==Growth rate of $Y$ ==

$$
\frac{\dot{Y}}{Y} = (1-\alpha)\frac{\dot{N}}{N}+\alpha \frac{\dot{K}}{K}+(1-\alpha) \frac{\dot{L_{Y}}}{L_{Y}}
$$
On the BGP,

$\frac{\dot{L_Y}}{L_Y}=0$, and $\frac{\dot{Y}}{Y}=\frac{\dot{K}}{K}$

In the long run,  the growth rate of output is:

$$
\frac{\dot{Y}}{Y} = (1-\alpha)\frac{\dot{N}}{N}+\alpha \frac{\dot{Y}}{Y}+(1-\alpha) \frac{\dot{L_{Y}}}{L_{Y}}
$$

So that the growth rate of $Y$ is exactly the growth rate of $N$

$$
\frac{\dot{Y}}{Y} = \frac{\dot{K}}{K} =\frac{\dot{N}}{N}
$$

Try to claim: $\frac{\dot{Y}}{Y} = \frac{\dot{K}}{K}$ in the long-run.

starting from:

$$
\begin{align}
\dot{K} = I -\delta K \implies  \frac{\dot{K}}{K} = \frac{I}{K} -\delta = \frac{sY}{K} - \delta \\

\end{align}
$$

Recall that $s$ is exogenous in [[Solow Model]], and endogenous in [[Ramsey Model]] and [[Romer Model]]. The endogenous saving rate $s$ is stationary/constant in the long-run.

On the BGP, $\{\dot{K}, s\}$ are constant. So $\frac{K}{Y}$ must be constant => $\frac{\dot{Y}}{Y}=\frac{\dot{K}}{K}$ in the long-run.

Key implication: $\frac{\dot{Y}}{Y}=\frac{\dot{N}}{N}$ in the long-run.

[[Economic Growth]] is determined by technological progress, which is endogenously determined in a market economy.

Key question is: what determines $\frac{\dot{N}}{N}$? That is R&D!

>  R&D sector:
>  - $v$ is the value of an invention
>  - $\dot{N}$ is the number of new inventions

Revenue from R&D = $\dot{N}V$

Cost of R&D = $WL_{R}$

[[R and D Profit]]

