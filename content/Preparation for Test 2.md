#Econometrics 

## Likelihood Ratio Test

Let the true parameter value be $\theta = \theta_{0}$, and consider a test for a more general hypothesis:

$$
H_{0}: r(\theta_{0}) = 0
$$
which consists of $g$ independent restrictions.

The likelihood ratio (LR) test is based on the loss of log-likelihood that results if the restrictions $r(\theta_{0}) = 0$ are imposed:

$$
LR = 2(I(\hat{\theta_{1}}) -I(\hat{\theta_{0}}) )
$$

recall that $\theta_{1}$ comes from the unconstrained ML estimator. And $\theta_{1}$ comes from the constrained ML estimator.

The LR test converges in distribution to $\chi_{g}^2$. The null hypothesis is rejected if LR is too large.

So if LR is relatively large, this means the *restriction* we add make the fitting model becomes worse. This means that it is possible that we shouldn't add the restriction -> we refuse the null hypothesis.


## Wald Test

The Wald test is based on the **unrestricted model alone**. Compared with LR test, the latter one needs the unrestricted model and the restricted model. But Wald test only needs to estimate the unrestricted model.

For example, suppose we already estimate $\hat{\theta_{1}}$, and the question is now: *Is this estimate far from the value required by the original hypothesis?*

>  For instance, if we make the hypothesis that $\beta_{2}= 0$, but we estimate that $\hat{\beta}_{2} = 2.5$, and the standard error is small. Then we could doubt that the null hypothesis is not correct.

- $\hat{\theta}_{1}$: the MLE of the unrestricted model.
- $r(\hat{\theta}_{1})$: we put the estimator into the restriction function.
- $\cal{I}_{n}(\hat{\theta}_{1})$: the information matrix. 在这里你可以理解为估计精度的度量
- $R_{1} =\frac{ \partial r(\theta)}{\partial \theta'}|_{\theta = \hat{\theta}_{1}}$:这是约束函数 $r(\theta)$对参数 $\theta$ 的导数（雅可比矩阵），用来线性近似约束函数

$$ W=r(\hat{\theta}_{1}​)'[R_{1}​I_{n}^{-1}​(\hat{\theta}_{1}​)R_{1}'​]r(\hat{\theta}_{1}​)​ $$




# Endogenous Regressors and Instrumental Variable Estimation

Recall that the OLS estimator is:

$$
b = (X'X)^{-1} X'y
$$


We hope that, for example, in a single [[Linear Regression]] model,

$$
y_{i} = \beta_{0} + \beta_{1} x_{1i} + \epsilon_{i}
$$

$\mathbb{E}[\epsilon_{i}|x_{1i}]= 0$, if not, that means $x_{1}$ is endogenous. We don't want to see that because in the OLS assumption, we require that the explanatory variable is independent from the error term. Otherwise there would be *biased and inconsistent*.

## [[Instrumental Variable]]

- 构造 Instrumental Variable 的要点就是要构造一个 $z$，它能一定程度上解释 $x$，但是它必须与 $\epsilon$ 无关，也就是说它不能直接影响 $y$。它对 $y$ 的影响必须仅通过 $x$ 来实现。
