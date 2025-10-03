#Economics/Macro 


$$
l^s = w = \frac{1}{1-\tau_{w}} \frac{\beta c}{L-l} \implies L - \frac{\beta c}{(1-\tau_{w})w} = l^s(c,w,\tau_{w})
$$

$$
l^d: w= \frac{(1-\alpha)Y}{l}
$$

$$
l^s =l^d: l = L - \frac{\beta}{(1-\tau_{w})} \frac{c}{(1-\alpha)Y}l
$$

$$
\implies l^{ * } = \frac{L}{1+\frac{\beta}{(1-\alpha)(1-\tau_{w})} \frac{c}{Y}}
$$

When $\delta = 0$, we have $\frac{c}{Y}=1-\gamma$

$$
l^{ * } = \frac{L}{1+ \frac{\beta (1-\gamma)}{(1-\alpha) (1-\tau_{w})}} \implies l^{ * } (\gamma_{+}, \tau_{w-})
$$

Details: we have to derive the $\frac{c}{Y}$

$$
\dot{K} = I = RK + wl -\tau_{w}wl-T-C
$$
note that $G = \gamma Y$
$$
\dot{K} = Y -\gamma Y -c
$$

==Steady State:== 

$$
\dot{K}=0\implies C = (1-\gamma)Y \text{when} \delta = 0
$$

==What if $\delta>0?$  (left as an exercise)==

# Different effects of $\tau_{w}$ and $\gamma$

It's clear that $\tau_{w}$ acts as a **contractionary effect**, and $\gamma$ acts as an **expansionary effect**

But the question is, what happens when $\tau_{w}$ and $\gamma$ change together?

- Government Budget: $G=\tau_{w}wl +T$

But we ignore the lump sum tax? That is, we set $T=0$

$$
\implies \gamma Y = \tau_{w} wl
$$

Considering that $Y = wl + rK$, so that the effect of $\tau_{w}$ must dominate the whole effect.

Mathematically, 

$$
\gamma = \tau_{w} \frac{wl}{Y} = (1-\alpha) \tau_{w}
$$
(recall that $w=(1-\alpha) \frac{Y}{l}$)

$$
\tau_{w} = \frac{\gamma}{1-\alpha}
$$
$$
\implies \frac{\delta \tau_{w}}{\delta \gamma}=\frac{1}{1-\alpha}>1
$$

Eg: If $\alpha=0.5$, then  $\frac{\delta \tau_{w}}{\delta \gamma}=2$

In summary, the negative effect ([[Substitution Effect]]) would dominate the positive effect ([[Income Effect]]).

If the government increases $\gamma$ by $1\%$, then it has to increase $\tau_{w}$ by $2\%$

Recall the equation:

$$
l^{ * } = \frac{L}{1+ \frac{\beta (1-\gamma)}{(1-\alpha) (1-\tau_{w})}} \implies l^{ * } (\gamma_{+}, \tau_{w-})
$$

We then try to substitute: $\tau_{w}=\frac{\gamma}{1-\alpha}$ into $l^{ * }$

We get:

$$
l^{ * } = \frac{L}{1+ \beta  \frac{1}{1 -  \frac{\alpha}{1-\gamma}}} \implies l^{ * }(\gamma_{-})
$$

## Policy Implications 

1. Recall that when $T>0$, an increase in the government spending ratio $\gamma$ (holding constant $\tau_{w}$) has an expansionary effect on the macroeconomy.
2. When $T=0$, a simultaneous increase in $\gamma$ and $\tau_{w}$ causes a contractionary effect on the macroeconomy.

Exercise:

Derive $l^*$ for the case of $\delta>0$, Show that $l^*(\tau_{w-},\gamma_{+})$

Answer:

$$
l^{ *} = \frac{L}{1+ \frac{\beta}{(1-\alpha)(1-\tau_{w})}\left(1-\gamma -  \frac{\alpha \delta}{\rho +\delta} \right)} 
$$

When $\tau_{w}$ and $\gamma$ increase together, $l^*$ decreases (unless $\alpha \to 0$ or $\rho \to 0$)


