[[Nash Bargaining]] involves [[Threat Values]], [[Cooperative Surplus]] and [[Bargaining Power]]

>  Unlike the initial discussion about the **Noncooperative Game Theory**, the [[Nash Bargaining]] is a [[Cooperative Game Theory]] problem.
## The famous example: Prisoner's Dilemma

![[截屏2023-09-17 16.04.57.png]]

In the previous study in [[Nash Equilibrium]], we know that the *equilibrium* happens in $(D,D)$ , which is not efficient $(C,C)$ ,that means people act *non-cooperatively*. But we know that in the *Prisoner's Dilemma*, people do so is because they do not have [[Bargaining Power]],if they could, they may reach the better outcome (efficiency).

In this case, the [[Threat Values]] would be $(0,0)$ , the [[Cooperative Surplus]] is $2$. They could reach the efficient outcome by *binding contract* which is $(C,C)$ 

> Binding Contract means no cheating, everyone do as they say.

But this is the case happens when they have *equal bargaining power* , suppose player 1 has full [[Bargaining Power]] but player 2 has none. Then player 1 could ask player 2 to pay $1 or $0.999999 to him, since 0.000001 > -1, player 2 would agree the contract, in this case, player 1 get the full [[Cooperative Surplus]].

The same is in the pollution problem.

Usually in such problems, we follow those steps:

1. What happens in the efficient outcome? (when no rights allocation)
2. What happens without bargaining?
3. What is the [[Cooperative Surplus]]
4. How about the results after bargaining?
5. Provide the results.

## The More formal explanation from [[EC487 Advanced Microeconomics]]

Definition:  A bargaining problem is a tuple $(X,(u^j)^2_{j=1},d)$ where:
- $X \subseteq R^n$ is a *compact* set of outcomes. It could be understood as the possible contracts that two companies could reach.
- $u^1,u^2: X \to \mathbb{R}$ are two continuous utility functions.
- $d\in X$ is a disagreement outcome so that $u^1(x)\geq u^1(d)$ and $u^2(x)\geq u^2(d)$ for all $x\in X$.

The definition of $X$ to make it *compact* is saying that the outcome is *bounded* and *closed*, this allows us to find the maximum utility for both players. So this is an important assumption.

**Definition** The *Nash Bargaining Solution* to a bargaining problem $(X, (u^j)^2_{j=1},x_{0})$ is an outcome $x^* \in X$ so that for all $j \in \{1,2\}$ and $(p,x) \in [0,1] \times X$

$$
p u^j(x) + (1-p)u^j(d) > u^j(x^*) \implies p u^{-j}(x^*) + (1-p)u^{-j}(d) < u^{-j}(x)
$$

$(p,x)$ here means a threat point, suppose at the current state $x^*$, player $j$ is not that satisfy with the current status, then he could propose a new $x$, this deal could happen with probability $p$, and with probability $1-p$ the deal fails and both players get the disagreement outcome $d$. The definition says that if player $j$ could get a better outcome by proposing $(p,x)$, then the other player $-j$ would try to avoid this deal by making sure that his expected utility from the current state $x^*$ is higher than the expected utility from the new proposed deal $(p,x)$.

**Proposition** $x^* \in X$ is a [[Nash Bargaining]] Solution for $(X, (u^j)^2_{j=1},x_{0})$ if an only if

$$
x^* \in argmax_{x \in X} (u^1(x) - u^1(d))(u^2(x) - u^2(d))
$$
**Proof** 

From definition, we could easily have $u^1(x)>u^1(d)$ and $u^2(x)>u^2(d)$ for any $x \in X$. Thus it is wlog to assume that $u(d) = 0$.

($\Rightarrow$) Suppose $x^*$ is a [[Nash Bargaining]] Solution, which is $x^*$. Suppose that there exists one $x$ such that $u^1(x)u^2(x)>u^1(x^*)u^2(x^*)$.

It's obvious at least one player is better off. Also wlog that we assume it is player $1$, which means $u^1(x)>u^1(x^*)$ . Then we have

$$
u^2(x) >  u^2(x^*) \frac{u^1(x^*)}{u^1(x)} = u^2(x^*)  p
$$

where $p \in (0,1)$.

By the definition of [[Nash Bargaining]], we have

$$
p u^1(x)  > u^1(x^*) \implies p u^{2}(x^*)  < u^{2}(x)
$$

Thus by definition, it is not a [[Nash Bargaining]] Solution, which contradicts our assumption.

($\Leftarrow$) Suppose we have $x^* \in argmax_{x \in X} u^1(x)u^2(x)$.


