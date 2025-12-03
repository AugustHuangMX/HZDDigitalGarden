#Econ/Macro #LSE/EC417_Macroeconomics 

This page mainly aims to answer one **core question**: How do we embed the income fluctuation problem into general equilibrium?

Before diving into the content, lets have a quick review of some notations:

## Notations

### Individual Level

- $a$: Asset, or in a lot of cases, wealth. $a_{t}$ means the current wealth held by a household,

If $a_{t} >0$, it means the household is saver, otherwise a borrower. In most cases, we would have a **borrowing constraint** for the household, normally denoted as $\underline{a}$. When $a = \underline{a}$, it means the household is borrowing as much as possible.

- $y$: Labour income. In the setting we are discussing today, it is **stochastic**. 
> Some Remarks: it is not hours worked (usually normalized to 1), Represents skill/productivity heterogeneity; Follows a Markov process with transition probabilities $p_{jj'}$.

See the stochastic part in [[Bellman Equation]] for more information.

- $\beta$: $\beta \in [0,1]$: How much households value future vs. present consumption. $\beta = 0.96$ means 1 pound tomorrow is worth 96 pence today.
- $\rho$: It is an alternative representation of $\beta$. The relationship is: $\rho = 1/\beta -1$.

If I really have to distinguish them, I would say in discrete time model, we use $\beta$, while in continuous time model, we use $\rho$.

### Population Level

- $g(a,y;r)$: This is a new concept, denoting the **stationary** distribution of households over asset and income, given the interest rate $r$. 

The formal domain is: $[\underline{a},\infty) \times \{y_{1},y_{2},\dots y_{J}\} \to \mathbb{R}_{+}$.

Meaning: Fraction of households with wealth $a$ and income $y$ in steady state. It satisfies:

$$
g(a,y) \geq 0 \quad \sum_{j} \int_{\underline{a}}^{\infty} g(a,y_{j};r) da = 1
$$

Intuition of why we involve $r$? Different $r$ would lead to different saving behavior, thus different stationary distribution. The hidden information from this integral is that $a$ also depends on $r$. The intuition is the higher the interest rate, the more incentive to save, thus the higher the wealth level.  

A numerical example: $g(5,y_{1};r) = 0.02$ means $2\%$ of households have wealth equal to 5 and income equal to $y_{1}$, given the interest rate is $r$.

Finally we could study the concept of $A(r)$:

- $A(r)$: Aggregate capital supply, it is sum of all individual wealth holdings, weighted by the distribution

There is:

$$
A(r) = \sum_{j} \int_{\underline{a}}^{\infty} a \cdot g(a,y_{j};r) da
$$

An extreme case: when $A(-1)$, it means $r = -1$ here, and it also means your wealth would disappear every end of the period. Thus no one would like to save anything, and $A(-1) = 0$.

## The Huggett Model

**Key idea**: Households trade **private IOUs** (bonds) among themselves to insure against income shocks. The story is like we first let $\sum_{i} b_{i}= 0$, everyone in the economy plays with each other and there shouldn't be spillover money here. If you want to borrow some money, there should be someone who like to lend you money.

It is the simplest GE heterogenous agent model since there's no production side here.

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

## The Bewley Model 

