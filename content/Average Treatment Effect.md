
整个 population 的平均 treatment effect, i,e:

$$
ATE = \mathbb{E}[Y_{i}(1)- Y_{i}(0)]
$$

It includes all the population, including *compliers*, *defier*, *never-taker*, *always-taker*

与之对应的，就是 **Local** ATE. 只针对 *complier* 的平均 treatment effect.

$$
LATE = \mathbb{E}[Y_{i}(1)- Y_{i}(0)|\text{Complier}]
$$
