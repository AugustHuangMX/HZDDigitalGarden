---
created: 2026-03-29 13:47
modified: 2026-03-29 13:47
tags:
  - Econ/Macro
  - LSE/EC417_Macroeconomics
---

## Background

See [[Microeconomic Origins of Aggregate Fluctuations]].

---

## The Model 

Consider the following economy: the economics is composed of a set $K$ production entities, note that these entities include factories, firms, sectors... (not necessarily to be firms). Factors are supplied *inelastically*, **only** influenced by productivity shocks. And entity $k \in K$ is subject to idiosyncratic (i.i.d.) output $a_{kt}$ . All these sum up, we have the GDP.

$$
Y_{t} = \sum_{k \in K} a_{kt}
$$

### The GDP volatility in this economy

Since we already assume, the only supply volatility comes from productivity shocks.

$$ \frac {\Delta a _ {k , t}}{a _ {k , t - 1}} = \frac {a _ {k , t} - a _ {k , t - 1}}{a _ {k , t - 1}} = \sigma_ {k} \varepsilon_ {k, t} $$

where $\epsilon_{kt}$ is mean 0, var 1. GDP growth:

$$ \frac {\Delta Y _ {t}}{Y _ {t - 1}} = \frac {1}{Y _ {t - 1}} \sum_ {k \in K} \Delta a _ {k, t} = \sum_ {k \in K} \frac {a _ {k , t - 1}}{Y _ {t - 1}} \sigma_ {k} \varepsilon_ {k, t} $$

> Here, $\sigma$ is entity $k$ 的波动率参数，而 $\epsilon$ 是标准化的冲击

Shocks are independent/uncorrelated, hence $\begin{array} { r } { \sigma _ { Y } = \sqrt { \mathsf { v a r } \frac { \Delta Y _ { t } } { Y _ { t - 1 } } } } \end{array}$  is:

$$ \sigma_ {Y} = \left(\sum_ {k \in K} \sigma_ {k} ^ {2} \left[ \frac {a _ {k , t - 1}}{Y _ {t - 1}} \right] ^ {2}\right) ^ {0. 5} $$








---

## Reference

