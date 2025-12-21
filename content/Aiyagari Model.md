#LSE/EC417_Macroeconomics 

## [[Aiyagari Model]] with Production 

Consider a representative firm with [[Constant Return to Scale]] production technology:

$$
Y = K^{\alpha} L^{1-\alpha}
$$

Firm rents capital from households at rate $R$ and hires efficiency units of labor at wage rate $w$:

$$
R = r+\delta = \alpha \left(\frac{L}{K}\right)^{1-\alpha}
$$
and for labour demand, it would be:

$$
w = \frac{\partial Y}{\partial L} = (1-\alpha) \left(\frac{K}{L}\right)^{\alpha}
$$

Thus we could get:

$$
w(r) = (1-\alpha) (\frac{\alpha}{r + \delta})^{\frac{\alpha}{1-\alpha}}
$$
For the households problem, he would face:

$$
c + \underbrace{ a' }_{ \text{Saving} } = \underbrace{ (1+r)a }_{ \text{wealth I get if I save} } + \underbrace{ w y_{j} }_{\text{Labour Income I get}}
$$
### Market Clearing Conditions

Thus there are two markets to be cleared: Labour market and capital market.

- Labour Market:

$$
L = \sum_{j} \int_{a} y_{j} g(a,y_{j};r)da
$$

We could also denote as: $L = \sum_{j} y_{j} \pi_{j}$ where $\pi_{j} = \int_{a}g(a,y_{j};r)da$ is the stationary distribution of income process.

- Capital Market:

Same as the normal [[Aiyagari Model]], we have:

$$
A(r) = K(r) = L\frac{\alpha}{r + \delta}^{\frac{1}{1-\alpha}}
$$


![[截屏2025-12-20 15.02.09.png|400]]

## Recursive Competitive Equilibrium (RCE)

Given $r$ and $w$, the function $V(a,y)$ solves the household problem, we use [[Bellman Equation]] to solve:

$$
V(a,y_{j}) = \max_{c} u(c) + \beta \sum_{j'} p_{jj'} V(a',y_{j'}) \quad \text{s.t.} \quad a' = (1+r)a + w y_{j} - c
$$
Given $r$ and $w$, the firm side is able to solve their FOC.