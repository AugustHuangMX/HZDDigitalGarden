#Econ/Macro 

Recall some model setting:

- [[Government Spending]]: $G = \gamma Y$
- Tax Revenue: 
	- Lump-sum tax $T$ (We usually ignore it)
	- Labour-income tax $\tau_{w}$
	- **Capital-income tax** $\tau_{r}$ (What we are interested in this chapter)

## Government Side

$$
G = T + \tau_{r} rK + \tau_{w} wl
$$

We are going to change $\tau_{r}$(holding $\gamma$ constant) to see how $\tau_{r}$ affects the macroeconomy.

> Which means we will assume that [[Government Spending]] does not change.


## Household Side

Recall, for household, we want to maximize their utility:

$$
u = \ln C + \beta \ln(L-l) +v (G)
$$
the maximization problem is:

$$
max_{C,l} U = \sum_{t=0} \frac{\ln C_{t}+ \beta \ln (L-l_{t}) +v(G_{t})}{(1-\rho)^t}
$$
s.t.

$$
\dot{K} = I = wl + rK -\tau_{r}rK - T - C
$$
It is intuitive to use the [[Hamiltonian]] to calculate the best answer, lets do this again:

$$
\begin{align}
\frac{\delta H}{\delta C} & = \frac{1}{C} - \lambda = 0 \implies \lambda = \frac{1}{C} \\
\frac{\delta H}{\delta l} & = -\frac{\beta}{L-l} + \lambda w = 0 \implies \lambda w = \frac{\beta}{L-l}\\
\frac{\delta H}{\delta K} & = \lambda\underbrace{  (1-\tau_{r}r) }_{ \text{after-tax capital rental price} } = \rho\lambda - \dot{\lambda}  \\
\implies - & \frac{\dot{\lambda}}{\lambda} = (1-\tau_{r})r- \rho
\end{align}
$$

From the equations above, we could get:

$$
\frac{\dot{C}}{C} = (1-\tau_{r})r-\rho
$$

[[Steady State]]: happens at $\dot{C} =0\implies K_{LR}^S: r = \frac{\rho}{1-\tau_{r}}$

When $\tau_{r}$ increases, the long-run capital supply curve shifts upward (i.e., reduction in supply).

When the government taxes capital income move heavily, the household accumulates less capital.

Similar, we could get from first two equations:

$$
l^s: w= \frac{\beta C}{L-l}
$$

Graphically Speaking:

![[Pasted image 20250310164533.png]]

Note that the change in $\tau_{r}$ will first affect the ==Capital Market==

To check why the $l^*$ is independent (that is to say, doesn't change)

Deriving the steady-state level of labor $l^*$.

$$
\begin{align}
l^d: &  w = MPL = \underbrace{ (1-\alpha) A \left( \frac{K}{l} \right)^\alpha }_{ \text{For Wage} } = \underbrace{ (1-\alpha)U \frac{Y}{l}  }_{ \text{For Labor} }\\
l^s: & w = \frac{\beta C}{L-l}\implies l^s = L-\frac{\beta C}{w} \\
l^s &= l^d: l = L - \frac{\beta C}{(1-\alpha)Y}l
\end{align}
$$

Finally,  we could get: 

$$
l = \frac{L}{1+\frac{\beta}{1-\alpha} \frac{C}{Y}}
$$

Given that $\delta = 0$, $\frac{C}{Y}= 1-\gamma$

$$
l^* = \frac{L}{1+\frac{\beta}{1-\alpha}(1-\gamma)}
$$
is independent of $\tau_{w}$

## Deriving the Consumption-output ratio

$$
\dot{K} = I = wl + rK -(\tau_{r}rK + T )-C
$$

$$
\implies Y - \gamma Y -C
$$
At steady state: $\dot{K} = 0 \implies C= (1-\gamma)Y$

In the output market: $Y = AK^\alpha l^{(1-\alpha)}$ 

$$
\tau_{r} \uparrow \implies K \downarrow \implies Y \downarrow \implies C \downarrow
$$

### Exercise

1. Derive $l^*$ when $\delta>0$, show that $l^*$ depends on $\tau_{r}$ if $\delta > 0$

*Answer:* recall the definition of $\delta$ is the capital depreciation rate, 

Now,  the asset-accumulation equation of $\dot{K}$ becomes:

$$
\begin{align}
\dot{K} &= I = wl + rK -\tau_{r}rK - T - C - \delta K \\
 &= [r-\tau_{r}r -\delta]K + wl -C - T 
\end{align}
$$

We should then redo the [[Hamiltonian]]:

$$
\begin{align}
\frac{\delta H}{\delta C} & = \frac{1}{C} - \lambda = 0 \implies \lambda = \frac{1}{C} \\
\frac{\delta H}{\delta l} & = -\frac{\beta}{L-l} + \lambda w = 0 \implies \lambda w = \frac{\beta}{L-l}\\
\frac{\delta H}{\delta K} & = \lambda(r-\tau_{r}r -\delta) = \rho \lambda - \dot{\lambda} \\
\implies - & \frac{\dot{\lambda}}{\lambda} = (1-\tau_{r})r - \delta - \rho
\end{align}
$$

Use the 1, 3 equation:

We could get: 

$$
\frac{\dot{C}}{C} = (1-\tau_{r}) r - \delta - \rho
$$

Also recall the equation we use when finding the $l^*$:

$$
l^s = l^d: l = L - \frac{\beta C}{(1-\alpha)Y}l
$$

Since it is at the steady state, that is $\dot{C} = 0$,

$$
\begin{align}
\dot{K} &= I = \underbrace{ wl + rK }_{ Y } -\underbrace{\tau_{r}rK +  T }_{ G = \gamma Y } - C - \delta K = 0 \\
0 &= Y - \tau_{r}rK - C - \delta K \\
C & = Y - \tau_{r} rK  - \delta K \\
\frac{C}{Y} & =(1-\gamma)\frac{Y}{Y}  - \frac{\delta K}{Y}
\end{align}
$$

That is to say, we have to derive  $\frac{K}{Y}$

At long-run, 

$$
\begin{align}
K^d: &  r= \alpha   \frac{Y}{K} \implies \frac{K}{Y} = \frac{\alpha}{r} \\
K^s: &  \dot{C} = 0 \implies (1-\tau_{r}) r = \rho + \delta \implies r = \frac{\rho + \delta}{1-\tau_{r}} & 
\end{align}
$$

So that when $K^d = K^s$, we could get: $\frac{K}{Y} = \frac{\alpha (1 -\tau_{r})}{(\rho + \delta))}$

That is, $\frac{C}{Y} = (1-\gamma)-\frac{\delta\alpha (1 -\tau_{r})}{\rho + \delta}$

So we plug it in the original equation, the we could get:

$$
l^* = \frac{L}{1+\frac{\beta}{1-\alpha} [(1-\gamma)-\frac{\delta\alpha (1 -\tau_{r})}{\rho + \delta}]}
$$

[[Exercise for Capital Income Tax]]

# Capital Taxation in the Neoclassical Growth Model 

## Household

$$
max_{C,l} U = \sum_{t=0} \frac{\ln C_{t}+ \beta \ln (L-l_{t}) +v(G_{t})}{(1-\rho)^t}
$$
s.t.

$$
\dot{K} = I - \delta K= wl + rK -\tau_{r}rK - T - C - \delta K
$$

Then we redo the [[Hamiltonian]], but the steps are the as what we see in [[Exercise for Capital Income Tax]]

