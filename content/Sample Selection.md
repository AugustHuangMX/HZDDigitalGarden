#metrics 

[[Sample Selection]] may be *endogenous*. To fix this idea, consider a two-stage process.

In the first stage, we have a pair $(Y,X)$ , and in the second stage, this pair is either selected into sample or unobserved ( $S = 0$ ).

Consider a very simple case, where, 

$$
Y = X'\beta + e \quad \text{with} \quad \mathbb{E}[e|X ] = 0
$$
Conditional mean for observed (selected) sample is:

$$
\mathbb{E}[Y|X,S=1] = X'\beta + \mathbb{E}[e|X,S=1]
$$

If the second term is not 0, we have a *selection bias*.

Consider a latent variable for whether to select:

$$
S^ * = Z' \gamma + u
$$

where $u \sim N(0,1)$

> 把这个当作一个 threshold 去理解，当 $S^* > 0$ ，那么 individual 就会 select，反之就不会。因为我们永远都无法真正观测到 $S^*$ ,所以它就是 [[Latent Variable Model]]

$Y$ is also considered as a [[Latent Variable Model]]:

$$
Y^* = X'\beta + e
$$

where $Y = Y^*$ if $S=1$ , otherwise we could not observe $Y$ . We also assume $\mathbb{E}[e|u] = \theta u$ .

## Try to estimate this...

For simplicity, we let $W = (X,Z)$ .

$$
\mathbb{E}[Y^*|W,u] = X' \beta + \theta u
$$

By LIE,

$$
\begin{align}
\mathbb{E}[Y^* | W,S] & = \mathbb{E}[\mathbb{E}[Y^* | W,u,S] | W,S] \\
& = X'\beta + \theta \mathbb{E}[u|X,S]
\end{align}
$$

- If $\theta = 0$ , simply OLS from $Y$ on $X$ can consistently estimate $\beta$
- If $\theta \neq 0$ , the model is 

$$
\mathbb{E}[Y|W,S=1] - X' \beta + \theta \mathbb{E}[u|X,S = 1]
$$

If we know $\mathbb{E}[u|X,S = 1]$ , we can still consistently estimate $\beta$ and $\theta$ .

## Estimation

We have two ways...

第 80 页给出两种方法：

**方法 1：NLLS（非线性最小二乘）。** 直接把 $\beta, \theta, \gamma$ 一起估计，最小化：

$$\sum_{i=1}^n \left(Y_i - X_i'\beta - \theta\frac{\phi(Z_i'\gamma)}{\Phi(Z_i'\gamma)}\right)^2$$

所有参数同时优化，一步到位。

**方法 2：Heckman 两步法。** 把问题拆开：

1. 先用 probit 从 $S$ 对 $Z$ 回归，得到 $\hat{\gamma}$，具体来说，回顾第75-76页的模型：$S^* = Z'\gamma + u$，$S = I\{S^* > 0\}$，$u \sim N(0,1)$。
2. 这就是一个标准的Binary模型——$S$ 是二元因变量（是否被选入样本），$Z$ 是回归变量，$\gamma$ 是待估参数。所以直接套用第28-31页学过的probit框架：
3. $$P[S=1|Z] = \Phi(Z'\gamma)$$
4. 最大化对应的log-likelihood得到 $\hat{\gamma}$。
5. 拿到 $\hat{\gamma}$ 后，你就能对每个观测计算 $\frac{\phi(Z_i'\hat{\gamma})}{\Phi(Z_i'\hat{\gamma})}$，这个值变成第二步OLS中一个"已知的"回归变量。本质上，第一步的目的就是估计出选择机制，从而在第二步中修正选择偏差。
6. 把 $\frac{\phi(Z_i'\hat{\gamma})}{\Phi(Z_i'\hat{\gamma})}$ 当作已知的回归变量，OLS 从 $Y$ 对 $X$ 和这个变量回归，得到 $\hat{\beta}$ 和 $\hat{\theta}$

两步法的优势是计算简单——每一步都是你熟悉的标准估计。代价是第二步的标准误不能直接用 OLS 默认输出，因为 $\hat{\gamma}$ 本身有估计误差，这个不确定性需要被考虑进去（第 80 页最后一行强调的）。

