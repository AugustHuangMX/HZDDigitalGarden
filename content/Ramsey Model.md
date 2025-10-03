Ramsey growth model **endogenise** $s$ in the [[Solow Model]]. The question is what determines the saving rate?

The key difference between [[Ramsey Model]] and [[Solow Model]] is that in [[Ramsey Model]], household chooses $C$ to maximize $U$.

We introduce an optimizing household to the [[Solow Model]].

# Household

$$
\begin{align}
Max_{C} U  & = \sum_{t=0} \frac{\ln C_{t}}{(1+\rho)^t} \\
s.t. \\
\dot{K} & = I -\delta K \\
\dot{K} & =Y - C -\delta K 
\end{align}

$$

Recall that $s = \frac{I}{Y} = 1 - \frac{C}{Y}$

## Hamiltonian

$$
H = \ln C + \lambda \dot{K}
$$


F.O.C:

$$
\begin{align}
\frac{\delta H}{\delta C}  & = \frac{1}{C} -\lambda = 0 \\
\frac{\delta H}{\delta K} &  = \lambda \left(  \underbrace{ \alpha A \left( \frac{L}{K} \right)^{1-\alpha} }_{ MPK } -\delta \right) = \rho \lambda - \dot{\lambda} \\

\end{align}
$$


We could derive that $-\frac{\dot{\lambda}}{\lambda} = MPK - \delta -\rho$

and $\frac{\dot{C}}{C} = MPK - \delta -\rho$

The optimal consumption path in the [[Ramsey Model]]

- If $MPK - \delta > \rho$, then $\frac{\dot{C}}{C}>0$ because the household wants to invest in capital and reduce the consumption today in order to enjoy a higher level of consumption in the future.

### Two differential equations

$$
\begin{align}
\frac{\dot{C}}{C}  & = \alpha A \left( \frac{L}{K}\right)^{1-\alpha}  - \delta -\rho \\
\dot{K} &  = AK^\alpha L^{1-\alpha} - C -\delta K
\end{align}
$$

There are 2 endogenous variables $\{C,K\}$

This dynamic system converges to the steady state (We won't do it here since it is an undergrad course)

Steady state: $\dot{C} = \dot{K} = 0$

We have a steady state because $A$ is constant. 

$\frac{\dot{C}}{C} = MPK -\delta -\rho = \alpha A\left( \frac{L}{K} \right)^{1-\alpha}-\delta - \rho$ 

If $\frac{\dot{C}}{C} = 0$, then $\alpha A\left( \frac{L}{K} \right)^{1-\alpha} = \delta + \rho$

Steady-state level of capital: $K^ * = (\frac{\alpha A}{\delta + \rho})^{1/1-\alpha}L$

How does the household's discount rate $\rho$ affect $K^ *$

$$
\rho \uparrow \implies K * \downarrow
$$

As the household becomes more important by discounting future utility at a higher rate, it accumulates less capital.

Culture (People's preference) affects [[Economic Growth]].

- Solow: The saving rate $s$ affects economic growth 
- Ramsey: The household's discount rate $\rho$ affects saving and [[Economic Growth]]: $\rho \uparrow \implies K * \downarrow$

But what about income? it decreases. ($Y * =A (\frac{\alpha A}{\delta + \rho})^{\alpha / 1-\alpha}L$)

income = $\frac{Y^*}{L}$ 

### Deriving the steady-state saving rate.

> 记得补充笔记


$$
s^* =\frac{\alpha\delta}{\delta+\rho}
$$

---

- In the [[Solow Model]], $s$ is exogenous.
- In the [[Ramsey Model]], $s$ is endogenous and chosen by the household.

$$
s^* (\rho_{-}, \alpha_{+}, \delta_{+})
$$



# Ramsey Model with a [[Perfect Competition]] Market 

The setting of the [[Ramsey Model]] in the market economy is unrealistic. In a market economy, **firms** are the ones who produce output.

So, we will introduce a market economy and firms to the [[Ramsey Model]]. We will refer to this extended version as a *decentralized* [[Ramsey Model]].

## Firms

$$
\pi = Y - wL - rK = AK^\alpha L^{1-\alpha} -wL-rK
$$

and we could derive the $w$ and $r$ by F.O.C...

## Household 




- Decentralized [[Ramsey Model]]: $\frac{\dot{C}}{C} = r - \delta -\rho$
- Centralized [[Ramsey Model]]: $\frac{\dot{C}}{C} = MPK - \delta -\rho$

It is surprised that by firms, $MPK = r$, so that the outcome of decentralized and centralized are the **same**.

> Note that the $r= MPK$ doesn't always hold.

The centralized [[Ramsey Model]] is not realistic, but important. because it gives us an **optimal allocation**. Decentralized [[Ramsey Model]] gives us a **market allocation**. If market allocation is not the same as the optimal allocation, we could consider there could be a [[Market Failure]], which is not efficient.

### Decentralized [[Ramsey Model]].

> Hint: the firms do not care about the households' fortune. They only care about their own profit.

However, by maximizing profit, the firms chooses $MPK = r$,which ends up maximizing the household's utility.

The reason is that a market economy with perfect competition (and without externality) yields an efficient allocation of resources.

$$
Y = wL +rK
$$

From the firms' profit maximization problem,

$$
\begin{align}
r &  = \frac{\delta Y}{K} \implies rK = \alpha Y \\
w  & = (1-\alpha) \frac{Y}{L} \implies wL = (1-\alpha)Y
\end{align}
$$



---

Exercise: Derive the steady-state saving rate in the decentralized [[Ramsey Model]].



---

# Monopolistic

| Competitive [[Ramsey Model]]                                                               | Monopolistic [[Ramsey Model]]                                           |
| ------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| $R= MPK \implies K_{c}^{* } =\left( \frac{\alpha A}{\delta + \rho} \right)^{1/1-\alpha L}$ | $p_{i} = \frac{r}{\alpha},\alpha<1$                                     |
|                                                                                            | $r=\alpha p_{i} = \alpha MPX_{i} = \alpha MPK,r<MPK$                    |
|                                                                                            | $K_{m}^{* }=\left( \frac{\alpha^2A}{\delta+\rho} \right)^{1/1-\alpha}L$ |


Monopolistic distortion reduces the rental price of capital (relative to $MPK$), such that the household accumulates a lower level of capital than the optimum.

![[截屏2025-04-11 10.14.51.png|400]]

-  $K_{c}^* : r = MPK = \alpha A\left( \frac{L}{K} \right)^{1-\alpha}$
- $K_{m}^* : r = \alpha MPK = \alpha^2 A\left( \frac{L}{K} \right)^{1-\alpha}$
so that $K_{c}^* >K_{m}^*$

## Final Good

$$
Y=L^{1-\alpha} \sum_{i=1}^N x_{i}^\alpha
$$

We take the FOC:

$$
\begin{align}
w &= MPL = (1-\alpha) \frac{Y}{L} \implies wL = (1-\alpha)Y \\
p_{i}  & = MPX_{i} = \alpha L^{1-\alpha}X_{i}^{\alpha-1}
\end{align}
$$

This is the demand function for $X_{i}$

## Intermediate Goods

- Production function: $X_{i} = K_{i}$.
- Profit function: $\pi_{i}=p_{i}X_{i} - rK_{i} = \alpha L^{1-\alpha}X_{i}^\alpha - rX_{i}$

Recall that we define: $A = N^{1-\alpha}$

$$
N \pi_{i} = (1-\alpha)\alpha Y
$$




In the competitive [[Ramsey Model]], the government, the government should not subsidize capital investment because the levels of capital and output are already at the optimal levels, without government intervention.



