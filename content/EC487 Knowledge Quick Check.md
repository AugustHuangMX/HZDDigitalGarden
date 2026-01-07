#LSE/EC487_Advanced_Microeconomics 

This page serves as a quick check for [[EC487 Advanced Microeconomics]].

## Lecture 1

- When we talk about [[Nash Bargaining]], we are talking about

$$
\max_{x}[u_{1}(x)- u_{1} (d)][u_{2}(x)- u_{2} (d)]
$$
- A function $f(x)$ is log concave if and only if $\log f(x)$ is concave.
- The addition of strictly concave functions is strictly concave.
- When we are talking about [[Zero Sum Game]], think about

$$
\min\max=\max\min
$$
- When talk about [[Rationalizable]], think about belief $\mu$.


## Lecture 7

- 讲了 Exchange Economy，也就是包含 $(N,e,u)$ 的经济模型。首次引入了 $e$, 需要掌握的点有
	- Excess Demand.
	- What is Gross Substitute Property? Shortly speaking, it means that for a price vector $p$, we increases price in one good, say $p_{\ell}$, other prices remain the same, then other goods' demand would strictly increase, so is the [[Excess Demand]].
	- If excess demand satisfies the gross substitutes property, there exists at most one competitive equilibrium where all prices are strictly positive.
- 7.1 介绍 Exchange Economy
- 7.2 介绍 [[Walrasian Equilibrium]], [[Walrasian Equilibrium]] is a price vector so that $z(p) = 0$. Thus the market clear.
- 7.3 Existence of WE: Proof. 明确说了不考。
- 7.4 Proof，不考
- 7.5 也是 Existence of WE，也明确不考
- 7.6 Uniqueness of WE: 要考，需要了解什么是 Gross Substitute Proporty.

## Lecture 8

- 讲解内容是 [[Welfare Theorem]]. 提到了 Pareto Efficiency.
- 8.1 讲了一个 utilitarian welfare. （一个常见假设，对于 $u$: suppose $u^j$ is *continuous*, *increasing* and *strictly concave*）
- 8.2 是重中之重，讲述了 [[First Welfare Theorem]]. 一个结论就是 Competitive Equilibria 是 Pareto Efficient 的。Intuition 也非常直接非常简单。
- 8.3 Second [[Welfare Theorem]].
- 8.4 一个 Application。


$$\boxed{ \begin{aligned} u'(c_t) &= \beta u'(c_{t+1})[f'(k_{t+1}) + 1 - \delta] \quad \text{(Euler)}\\ c_t + k_{t+1} &= f(k_t) + (1-\delta)k_t \quad \text{(Resource)}\\ \lim_{T\to\infty} \beta^T u'(c_T)k_{T+1} &= 0 \quad \text{(TVC)}\\ k_0 &= \hat{k}_0 \quad \text{(IC)} \end{aligned} }$$