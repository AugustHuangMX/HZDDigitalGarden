#LSE/EC484_Econometrics_Analysis 

After studying [[Law of Large Numbers]] and [[Central Limit Theorem]], we often need to deal with functions of random variables. The **Continuous Mapping Theorem** helps us understand how functions of converging random variables behave.

The core idea of CMT is mainly: **If a sequence of random variables converges (in probability or distribution), then a continuous function of those random variables also converges (in the same mode of convergence).**

>  We have to check if $g(\cdot)$ is still continuous at $x=c$.

## Example 

An example of CMT is consider $\hat{\mu} = n^{-1} \sum_{i=1}^n h(y_{i}) \to^p \mathbb{E}[h(y)]$ and $g(\cdot)$ is continuous at $\mu$, then 

$$
g(\hat{\mu}) \to^p g(\mu)
$$