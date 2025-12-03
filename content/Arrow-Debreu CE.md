#Econ/Macro 

The [[Arrow-Debreu CE]], which is also called **ADCE**, is a growth model which consists of a sequences of $\{c_{t}^h, h_{t}^h, k_{t}^h, k_{t}^f, h_{t}^f, p_{t}, w_{t}, R_{t}\}^\infty_{t=0}$ subject to three conditions: 

1. Household Max
2. Firm Max 

And there is a relatively interesting conditions, which is the:

3. Market Clear Condition.

## Household Max.

Take the $\{p_{t},w_{t}, R_{t}\}$ as given, the household chooses $\{c_{t}^h, h_{t}^h, k_{t}^h\}^\infty_{t=0}$ to maximize the intertemporal utility function:

$$\max_{\{c_{t}^h, h_{t}^h, k_{t}^h\}^\infty_{t=0}} U = \sum_{t=0}^{\infty} \beta^t u(c_{t})$$





$$\begin{align} \sum_{\ell=1}^L (x'_\ell - \delta) p_\ell(n_k) &= \sum_{\ell=1}^L x'_\ell p_\ell(n_k) - \delta \sum_{\ell=1}^L p_\ell(n_k) \ &= \sum_{\ell=1}^L x'_\ell [p_\ell(n_k) - p_\ell] + \sum_{\ell=1}^L x'_\ell p_\ell - \delta \sum_{\ell=1}^L p_\ell(n_k) \end{align}$$


## The BGP ADCE 

The balanced growth path ADCE is a special case where everything grows at constant rate, but maybe not the same rate. For example, the technology grows at rate $g_{A}$, and the consumption grows at rate $g_{c}$, etc.

But finally, it turns out to be the same. Here's a sketch proof:

Consider the household problem:

$$
c_{t} = F(k_{t},A_{t}) + (1-\delta ) k_{t} - k_{t+1}
$$

In the BGP ADCE, $c_{t}$ grows at constant rate, thus the RHS part also grows at constant rate. Note that $A_{t}$ grows at constant rate $g_{A}$, thus $F(k_{t},A_{t})$ must also grow at constant rate. And all the components grow at constant rate, thus $k_{t}$ must also grow at constant rate.