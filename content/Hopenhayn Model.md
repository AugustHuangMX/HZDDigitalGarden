#LSE/EC417_Macroeconomics 

After studying [[Aiyagari Model]], [[Bewley Model]], and [[Huggett Model]], these three models basically are the heterogeneous **Household** models. What about heterogeneous firms? This gives us motivation to study the [[Hopenhayn Model]]. (or Hopenhayn-Rogerson Model).

Some properties:

1. Stationary employment and productivity distribution.
2. Firm size distribution highly skewed
3. Firms do not perfectly adjust to productivity shocks. (Productivity shocks are idiosyncratic across firms).

## The model structure 

1. Firms face idiosyncratic productivity shocks.
2. Decreasing returns to scale: $MPL < w$ implies there's an optimal firm size.
3. Firms face entry and exit decisions.
	1. When productivity becomes too low, firms would like to exit.
	2. New firms would like to enter the market if the expected profit is non-negative. (only when it's sufficient to cover the entry cost).
4. Entry and exit rates equal and constant in equilibrium.
5. Stationary firm size distribution.

## Firm Problem: Profits

$$
\pi_{t} = p_{t} f(n_{t},a_{t}) - n_{t} -p_{t}c_{f} - g(n_{t} ,n_{t-1})
$$
where 
- $n_{t}$: number of workers today.
- $p_{t}$: output price, firm take as given (wage rate normalized to $1$).
- $c_{f}$: fixed operating cost, needed for exit.
- $f(n_{t},a_{t})$ firm-level production function:

$$
f(n_{t},a_{t}) = a_{t} n_{t}^{1-\alpha}
$$

- $a_{t}$: idiosyncratic productivity shock, follows a Markov process $AR(1)$ in logs:
$$
\log(a_{t}) = \bar{a} + \rho \log(a_{_{t-1}})+ \epsilon_{t}, \quad \epsilon_{t} \sim N(0,\sigma^{2}_{\epsilon}),\bar{a}\geq 0, 0 \leq \rho <1
$$
- $g(n_{t},n_{t-1})$: cost of adjusting labor, for example: 

$$
g(n_{t},n_{_{t-1}}) = \tau \max\{0,n_{t-1}-n_{t}\}
$$

## Firm Problem: Exit or Stay?

Every time at $t =0$, the "incumbent" firms are those with $n_{t-1} >0$. At start of $t=0$, they decide:

1. Exit. If exit, they have to pay $g(0,n_{t-1})$ then disapper.
2. If continue, they observe $a_{t}$ and pay $p_{t} c_{f}$  to stay in the market.
3. Then they choose the optimal $n_{t}$ to produce.

## Firm Problem: When to Enter?

If an outside firm wants to enter the market, they have to pay a fixed cost $p_{t} c_{e}$. Then it observes productivity $a_{t}$ drawn from distribution $\mathcal{v}$.

The production stage would be choose a $n_{t}$:

$$
\pi_{t} = p_{t} f(n_{t},n_{t-1}) - n_{t} -p_{t}c_{f} - g(n_{t},0)
$$

