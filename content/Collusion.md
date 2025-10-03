Collusion：串通、勾结

比较著名的一类 [[Collusion]]，比如 [[Cartel]]，

# Theory of Tacit [[Collusion]]

## Model Setting

- Homogenous goods
- Share the same $MC=c$
- Firms set price simultaneously in a sequence of identical periods. 
- If prices are equal, they split the demand equally.
- There is a *discount factor* $\delta$

> The meaning behind the discount factor: it reflects how you value the money today vs. Money in the future. Usually, $0\leq \delta\leq 1$, the higher the $\delta$, the more you value the future.


### Finite time period

Suppose the $T$ is finite, then we face a T-period model (Think about what you learn from ECON4001 [[Game Theory]]), we can use **backwards induction** to find the SPNE.

So no matter how many periods you set before, in the last period (round), the [[Nash Equilibrium]] would be the [[Bertrand Model]] competition. The firms would set the price to be $p=c$.

Knowing this, the firm would also play the [[Bertrand Model]] competition in the penultimate round, until the first round. Even the $T$ could be extremely big, if it is always **finite**, the only equilibrium outcome would be  $p=c$.

> If it is quantity setting competition, the outcome would be the cournot.

### Infinite Horizon

When time horizon is infinite or it is uncertain to firms, the logic we mentioned above is no longer applies because there is no final time period and we could not apply the backwards induction.

What we do to find a SPNE: *posit equilibrium strategies and check whether a firm would want to deviate from the suggested strategy in any period*, because it also follows the definition of SPNE.

The **trigger** and the **grim** strategy:

- Each firm would set their prices: $p_{i} = P^M$ for all $t$ unless one firm deviated from any previous period. If one firm deviated, other firms would choose to set the price to $p_{i}=MC$ in the remaining time.

The optimal deviation for firms is to set $p_{i}=P^M - \epsilon$ and take the whole market. It could get almost $\pi^M$ in the period and other times, none.

So PDV for deviate is:

$$
\pi^M + \delta(0) + \delta^2(0)+\dots=\pi^M
$$

However, if you do not deviate,

$$
\frac{\pi^M}{2}+\delta\frac{\pi^M}{2}+\delta^2\frac{\pi^M}{2}+\dots=\frac{\pi^M}{2}(1+\delta+\delta^2+\dots)
$$

We could get the answers by 等比数列求和

We could finalize the answer to $\frac{\pi^M}{2} \frac{1}{1-\delta}$

So the firms would not deviate if $\frac{\pi^M}{2} \frac{1}{1-\delta}\geq \pi^M$, that is, $\delta \geq \frac{1}{2}$. The intuition behind the result is that *[[Collusion]] could be sustained if the firms are patient enough*

> Patience is key in life.

We could sustain collusion for lower discount rates if the collusive joint quantity is set to be greater than the monopoly quantity. Because the collusive profit falls more slowly with an increase in $q^{Collusion}$ than the deviation profit so when we increase $q^{Collusion}$ we reduce the incentive to deviate.

In a N-firm bertrand competition case, we could sustain collusion if $\delta\geq\frac{N-1}{N}$

So when there are more firms, it is harder to sustain the [[Collusion]].

# Part II: Extensions to the Basic Model, Facilitating Practices and [[Cartel]]

The problems for Trigger Strategies are as follows:

1. Once you make a small deviation, even it is by bad luck/a silly mistake, you would undermines the [[Collusion]] forever. That is to say, the punishment too harsh.
2. Can only sustain collusion for high enough discount rates. If the punishment is harder enough, maybe we could sustain the collusion with lower discount rate.

### Carrot and Stick Strategy

Let’s suppose that the firms play strategies where they collude on the monopoly output, but if someone deviates they each produce $\frac{1}{2}$ for one period before returning to collusion. If there is cheating during the punishment phase, they punish again in the next period.

To check whether it is an equilibrium:

In the static [[Cournot]] best response, $q_{i}^{ * }=\frac{1}{2}-\frac{q_{j}}{2}$

$\pi_{i}(q_{j})=\left( \frac{{1-q_{j}}}{2} \right)^2$.

If you cheat, you would get the best response profit today, but get punished tomorrow and then return to the collusion profit:

$$
\left( \frac{\left( {1-\frac{1}{2}} \right)}{2} \right)^2+\delta(0)+\delta^2\frac{{\frac{1}{4}}}{1-\delta}
$$
