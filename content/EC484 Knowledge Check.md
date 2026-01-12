#LSE/EC484_Econometrics_Analysis 

This page serves as a quick knowledge check list for preparing the final exams in EC484 Econometrics Analysis. It covers key concepts, formulas, and methodologies that I am not familiar with.

1. A matrix $A$ is **nonsigular** if
	1. It is invertible. (exists $A^{-1}$ such that $AA^{-1} = I$)
	2. $\det(A) \neq 0$
	3. $Ax=0$ has only the trivial solution $x=0$.
	4. The columns (or rows) of $A$ are linearly independent.
2. [[Variance]] equation: $Var(X) = E[X^2] - (E[X])^2$
3. [[Covariance]] equation: $Cov(X,Y) = E[XY] - E[X]E[Y]$
4. Positive Semi-Definite Matrix: A symmetric matrix $A$ is positive semi-definite if for any non-zero vector $x$, $x^T A x \geq 0$.
5. The optimal matrix in GMM is $W^* = \Omega^{-1}$. Where $\Omega$ is the variance-covariance matrix of the moment conditions.
	1. $\Omega = \mathbb{E}[g(Z,\theta_{0})g(Z,\theta_{0})']$
	2. Suppose $\Omega$ is $r$ dim $$\Omega = \begin{pmatrix} E[g_1^2] & E[g_1 g_2] & \cdots & E[g_1 g_r] \\ E[g_2 g_1] & E[g_2^2] & \cdots & E[g_2 g_r] \\ \vdots & \vdots & \ddots & \vdots \\ E[g_r g_1] & E[g_r g_2] & \cdots & E[g_r^2] \end{pmatrix}$$
	3. Thus in two-step GMM, we could also use similar approach to estimate $\Omega$ by using the sample analog: $$
\hat{\Omega} = \frac{1}{n} \sum_{i=1}^{n} g(Z_i, \hat{\theta}_{W}) g(Z_i, \hat{\theta}_{W})'
$$
	Where $\hat{\theta}_{W}$ is the GMM estimator from the first step with some initial weighting matrix $W$.
6. $\text{Var}(c+e_{i}) = \text{Var}(e_{i}) = \sigma^{2}$ if $c$ is a constant. The reason is that adding a constant to a random variable does not change its variance.
7. [[Delta Method]] is fundamentally [[Taylor Expansion]] and CLT.
	1. If $\sqrt{ n }(\hat{\beta}- \beta) \to^d N(0,V)$, then $\sqrt{ n }(g(\hat{\beta})- g(\beta)) \to^d N(0,GVG')$ where $G = \frac{\partial g(\beta)}{\partial \beta'}$.
8. The two step GMM:
	1. 首先选择一个任意的初始矩阵 $W_{n}^{(1)}$ 比如某个单位矩阵 $I$. 然后计算这个初始矩阵下的 GMM estimator $\hat{\theta}_{W}^{(1)}$. 
	   $$\hat{\theta}_{W}^{(1)} = \arg \min_{\theta \in \Theta} Q_{n}(\theta; W_{n}^{(1)}) = \arg \min_{\theta \in \Theta} g_{n}(\theta)' W_{n}^{(1)} g_{n}(\theta)$$（也可以写成 sum 的形式）
	2. 第二步是计算 $\hat{\theta}_{W}^{(1)}$ 下的 $\hat{\Omega}$:
	   $$\hat{\Omega} = \frac{1}{n} \sum_{i=1}^{n} g(Z_i, \hat{\theta}_{W}^{(1)}) g(Z_i, \hat{\theta}_{W}^{(1)})'$$ 也就是用第一步的估计值来计算矩阵 $\Omega$ 的样本矩阵。注意 $\hat{W} = \hat{\Omega}^{-1}$.
	3. 最终的估计器是用第二步的 $\hat{W}$ 来计算的 GMM estimator:
	   $$\hat{\theta}_{W}^{(2)} = \arg \min_{\theta \in \Theta} Q_{n}(\theta; \hat{W}) = \arg \min_{\theta \in \Theta} g_{n}(\theta)' \hat{W} g_{n}(\theta)$$
9. 渐近分布：
	1. 标准的 GMM 渐近分布：
	   $$
\sqrt{ n }(\hat{\theta} - \theta_{0}) \to^d N(0,(G'\Omega^{-1}G)^{-1})
$$
其中， $G = \mathbb{E}[\frac{\partial g(Z,\theta_{0})}{\partial \theta'}]$ 是矩阵 $g$ 对参数 $\theta$ 的导数的期望值。$\Omega =\mathbb{E}[g(W_{i},\theta_{0}),g(W_{i},\theta_{0})']$
注意维度问题：$G$ 是 $r \times k$， $\Omega$ 是 $r \times r$，所以 $G' \Omega^{-1} G$ 是 $k \times k$ 的矩阵，最后的逆也是 $k \times k$ 的矩阵。 
10. J 检验：
