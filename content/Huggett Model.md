#LSE/EC417_Macroeconomics 

**Key idea**: Households trade **private IOUs** (bonds) among themselves to insure against income shocks. The story is like we first let $\sum_{i} b_{i}= 0$, everyone in the economy plays with each other and there shouldn't be spillover money here. If you want to borrow some money, there should be someone who like to lend you money. Thus, unlike [[Huggett Model]], we have to satisfy the *market clear* condition, which is $A(r) = 0$, while in [[Huggett Model]], $A(r) = K(r)$.

It is the simplest GE heterogenous agent model since there's no production side here.

In [[Huggett Model]], it is important that the model allows households to borrow, thus $\underline{a} < 0$. If we don't do so, then for the market to clear, we must have everyone has $0$ asset, which is Autarky equilibrium.

The nature of this model is that we have idiosyncratic shocks on different households, and different households would like to smooth their consumption via borrowing and lending among themselves. (rich people lend money to the poor).

## Recursive Competitive Equilibrium (RCE)

The Recursive Competitive Equilibrium (RCE) has three components:

1. Value and policy functions: $V(a,y), c(a,y), s(a,y)$.
>  Here, $a$ means asset, $y$ means income, $c$ means consumption, $s$ means saving.
2. Distribution of households: $g(a,y)$.
>  The $g(\cdot)$ mainly means the distribution of households over asset and income.
3. The interest rate, which is $r$.


Recall the [[Bellman Equation]] with stochastic income:

$$
V(a,y_{j}) = \max_{c,a'\geq \underline{a}} u(c) + \beta \sum_{j'} p_{jj'} V(a',y_{j'}) \quad \text{s.t.} a' = (1+r)a + y - c
$$

The market clearing condition here is:

$$
A(r) = \sum_{j} \int_{\underline{a}}^{\infty} a \cdot g(a,y_{j};r) da = 0
$$

We also assume $g(\cdot)$ remains the same.