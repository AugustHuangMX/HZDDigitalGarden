#Econ/metrics 

Or, so called **GMM**. 

Some important assumptions:

- Why we need Continuity?
Because once we have assumed there exists continuity, we could then apply the [[Central Limit Theorem]] to the sample moment. 

>  Continuous function would have the minimum value in a compact set.

Thus we could estimate the $\hat{\theta}_{W}$.

See a counter example:

$$g(z, \theta) = \begin{cases} z - \theta & \text{if } \theta \neq 0 \\ z & \text{if } \theta = 0 \end{cases}$$

The function is not continuous at $\theta = 0$.

Another assumption is the Dominance, which is written as:

$$
\mathbb{E}[\sup_{\theta in \Theta}| g(Z,\theta)] < \infty
$$

- Why we need Dominance?

Because we need to apply the [[Uniform Law of Large Numbers]], which requires the Dominance condition.





# GMM in the non linear setting

The [[Asymptotic Normality]] would satisfy, which could be represented by:

$$
\sqrt{n}(\hat{\theta} - \theta_{0}) \rightarrow N(0,(G'WG)^{-1} G'W \Omega WG(G'WG)^{-1})
$$

We would describe it one by one:
- What is $G$? $G = \mathbb{E} [\frac{\partial  g(Z,\theta_{0})}{\partial \theta'}]$

We denote a Jabobian matrix
$$\bar{G}(\theta) = \frac{\partial \bar{g}(\theta)}{\partial \theta'} = \begin{pmatrix} \frac{\partial g_1}{\partial \theta_1} & \cdots & \frac{\partial g_1}{\partial \theta_p} \\ \vdots & \ddots & \vdots \ \\ \frac{\partial g_q}{\partial \theta_1} & \cdots & \frac{\partial g_q}{\partial \theta_p} \end{pmatrix}_{q \times p}$$

Recall the asymptotic variance is $(G'WG)^{-1} G'W \Omega WG(G'WG)^{-1}$, for simplicity, we denote it as $V_{W}$.

Note that $V_{W}$ is dependent on the weighting matrix $W$. 

How to understand the $\Omega$ ? $\Omega = \mathbb{E}[g(Z,\theta)g(Z,\theta)']$, which is the variance covariance matrix of the moment conditions. The larger the $\Omega$, the larger the variance of the estimator, which we don't want to see. Thus we need to give them a *smaller* weight. In practice, the optimal **Weighting Matrix** would be

$$
\mathbf{W}^* = \Omega^{-1}
$$


Plus, under the optimal weighting matrix, the asymptotic variance could be simplified as:

$$
V_{\mathbf{W}^*} = (G' \Omega^{-1} G)^{-1}
$$


