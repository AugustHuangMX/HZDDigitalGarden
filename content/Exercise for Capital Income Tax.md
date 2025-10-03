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
\implies - & \frac{\dot{\lambda}}{\lambda} = (1-\tau_{r})r - \delta - \rho = \frac{\dot{C}}{C}
\end{align}
$$

> We assume the labor-income tax = 0, so we won't have $\tau_{r}$ in the equation 2.

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


## Government Side

$$
G = T + \tau_{r} rK
$$

## Comparative Analysis

Always remember that we would have following steps for comparative analysis:

1. Capital Market: What does $\dot{K}$ change?
2. Labour Market: $l^d$? 
3. Output Market: What does $Y$change? And lead to the decrease in $l^s$
4. Capital Market: $K^d$ shift?



$$
\begin{align}
\dot{K} &= I = \underbrace{ wl + rK }_{ Y } -\underbrace{\tau_{r}rK +  T }_{ G = \gamma Y } - C - \delta K = 0 \\
0 &= Y - \tau_{r}rK - C - \delta K \\
C & = Y - \tau_{r} rK  - \delta K \\
\frac{C}{Y} & =(1-\gamma)\frac{Y}{Y}  - \frac{\delta K}{Y}
\end{align}
$$

That is to say, we have to derive  $\frac{K}{Y}$, the capital-output ratio.

At long-run, 

$$
\begin{align}
K^d: &  r= \alpha   \frac{Y}{K} \implies \frac{K}{Y} = \frac{\alpha}{r} \\
K^s: &  \dot{C} = 0 \implies (1-\tau_{r}) r = \rho + \delta \implies r = \frac{\rho + \delta}{1-\tau_{r}} & 
\end{align}
$$

So that when $K^d = K^s$, we could get: $\frac{K}{Y} = \frac{\alpha (1 -\tau_{r})}{(\rho + \delta))}$

That is, $\frac{C}{Y} = (1-\gamma)-\frac{\delta\alpha (1 -\tau_{r})}{\rho + \delta}$, so that $\tau_{r} \uparrow \implies \frac{C}{Y} \uparrow$

So we plug it in the original equation, the we could get:

$$
l^* = \frac{L}{1+\frac{\beta}{1-\alpha} [(1-\gamma)-\frac{\delta\alpha (1 -\tau_{r})}{\rho + \delta}]}
$$


So that the $\tau_{r}  \uparrow \implies l^*  \downarrow$

The negative effect of $\tau_{r}$ on $l^d$ is bigger than the positive effect of $\tau_{r}$ on $l^s$, 

The overall effect of $\tau_{r}$ on $l^*$ depends on $\frac{C}{Y}$

- The negative effect of $\tau_{r}$ on $l^*$ via $l^d$ is captured by the decrease in $Y$. 
- The positive effect of $\tau_{r}$ on $l^*$ via $l^s$ is captured by the decrease in $C$.

- If $\delta = 0$, the percent decrease in $Y =$  the percent decrease in $C$ because $I^* = 0$ in Long-run.
- If $\delta > 0$, the percent decrease in $Y >$  the percent decrease in $C$ because $I^* > 0$

> Important: 
> $$
\begin{align}
\dot{K} &= I - \delta K= wl + rK -\tau_{r}rK - T - C - \delta K \\
 &= [r-\tau_{r}r -\delta]K + wl -C - T 
\end{align}
$$


What happens when $\tau_{r}$ and $\gamma$ change simultaneously?

$$
\begin{align}
G  & = T + \tau_{r}rK  \\
\gamma Y &  = \tau_{r}rK  \\
\gamma &  = \tau_{r} \frac{rK}{Y} = \alpha \tau_{r}
\end{align}
$$
- If $\delta = 0$, $l^* = \frac{L}{1+\frac{\beta}{1-\alpha}(1-\gamma)}= \frac{L}{1+\frac{\beta}{1-\alpha}(1-\alpha \tau_{r})}=l^*(\underbrace{ \tau_{r} }_{ + })$
- If $\delta> 0$, $l^* = \frac{L}{1+\frac{\beta}{1-\alpha}[1-\gamma-\frac{\delta\alpha(1-\tau_{r})}{\delta+\rho}]}= \frac{L}{1+\frac{\beta}{1-\alpha}[1-\alpha \tau_{r}-\frac{\delta\alpha(1-\tau_{r})}{\delta+\rho}]}=l^*(\underbrace{ \tau_{r} }_{ + })$

In both cases, $l^*$ is increasing in $\tau_{r}$, when $\gamma$ and $\tau_{r}$ change simultaneously.

> Do it yourself!

