#Econ/Econometrics 

以下内容由Grok 2生成：

高斯-马尔科夫定理（Gauss-Markov Theorem）是计量经济学和统计学中的一个基础定理，它提供了关于线性回归模型中最小二乘估计（OLS）的重要性质。让我们逐步理解这个定理。

### 高斯-马尔科夫定理的陈述

高斯-马尔科夫定理表明，在经典线性回归模型（CLRM）的某些假设下，最小二乘估计量（OLS estimator）是所有线性无偏估计量中方差最小的估计量。具体来说：

- **线性**：估计量是解释变量 XXX 的线性组合。
- **无偏**：估计量的期望值等于真实参数值。
- **最小方差**：在所有满足上述条件的估计量中，OLS估计量的方差最小。

### 经典线性回归模型的假设

为了使高斯-马尔科夫定理成立，需要满足以下假设（通常称为Gauss-Markov假设）：

1. **线性性**（Linearity）：模型是线性的，即 y=Xβ+ϵy = X\beta + \epsilony=Xβ+ϵ。
2. **无偏性**（Unbiasedness）：误差项 ϵ\epsilonϵ 的期望值为零，即 E(ϵ)=0E(\epsilon) = 0E(ϵ)=0。
3. **同方差性**（Homoscedasticity）：误差项的方差是恒定的，即 Var(ϵi)=σ2\text{Var}(\epsilon_i) = \sigma^2Var(ϵi​)=σ2 对所有 iii 都成立。
4. **无自相关性**（No Autocorrelation）：误差项之间没有相关性，即 Cov(ϵi,ϵj)=0\text{Cov}(\epsilon_i, \epsilon_j) = 0Cov(ϵi​,ϵj​)=0 对所有 i≠ji \neq ji=j 都成立。
5. **外生性**（Exogeneity）：解释变量 XXX 与误差项 ϵ\epsilonϵ 不相关，即 E(X′ϵ)=0E(X'\epsilon) = 0E(X′ϵ)=0。

### 定理的意义

高斯-马尔科夫定理告诉我们，在这些假设下，OLS估计量 β^\hat{\beta}β^​ 具有以下优良性质：

1. **无偏性**：E(β^)=βE(\hat{\beta}) = \betaE(β^​)=β，这意味着长期来看，OLS估计的平均值会等于真实的参数值。
2. **最小方差**：在所有线性无偏估计量中，OLS估计量的方差 Var(β^)=σ2(X′X)−1\text{Var}(\hat{\beta}) = \sigma^2 (X'X)^{-1}Var(β^​)=σ2(X′X)−1 是最小的。这意味着OLS估计量在给定这些假设下是最有效的估计量。

### 数学证明

虽然详细的数学证明超出了这里的范围，但基本思路是这样的：

1. **线性估计量**：考虑一个一般的线性估计量 β~=Cy\tilde{\beta} = Cyβ~​=Cy，其中 CCC 是一个与 yyy 相关的矩阵。
    
2. **无偏性条件**：为了 β~\tilde{\beta}β~​ 无偏，必须满足 E(β~)=βE(\tilde{\beta}) = \betaE(β~​)=β，这意味着 CCC 必须满足某些条件。
    
3. **最小方差**：通过证明OLS估计量 β^=(X′X)−1X′y\hat{\beta} = (X'X)^{-1} X' yβ^​=(X′X)−1X′y 在所有满足无偏性条件的线性估计量中具有最小的方差来完成。
    

### 实际应用

在实践中，高斯-马尔科夫定理为我们提供了信心，即在满足上述假设的情况下，OLS是最佳的线性无偏估计方法。这意味着如果我们想要估计线性回归模型的参数，并且假设成立，使用OLS是最好的选择。

### 总结

高斯-马尔科夫定理强调了在经典线性回归模型的假设下，最小二乘估计的优越性。它保证了OLS估计量不仅无偏，而且在所有可能的线性无偏估计量中具有最小方差。这对于经济学家和统计学家来说非常重要，因为它提供了使用OLS进行参数估计的理论依据。

---


It is also called *Crucial Assumptions*

$Cov(X,u)=0$

- Zero Conditional Mean

$E(u|X)=0$, $u$ has 0 expectation

- Spherical Disturbance ( [[Homoscedasticity]] ) 同方差假设

$Var(u|X)=\sigma ^2I$

Why do we set these conditions?

Because the OLS has statistical features, so we have to satisfy these

How we get $MSE$

$$
MSE = E[(\hat \theta - \theta)^2]
$$
$$
E[(\hat \theta - \theta)^2] = E[(\hat \theta -E(\hat \theta)+E(\hat \theta) - \theta)^2]
$$

> This could be referred to https://iewaij.github.io/introDataScience/GaussMarkov.html for more information.


# Proof of the Theorem 

Before doing the proofs, we give some important notations. （单纯是我老是学着学着就把一些字母代表的含义搞混了）

- $\beta$: this is the **true** coefficient. in the linear regression model, we have $y = X\beta + \epsilon$.
- $\hat{\beta}$: we got this value through some estimation method, usually [[Ordinary Least Squares]]. the reason we give it a **hat** is because this is an estimator, not real number.
- $b$: most of the time, $b=\hat{\beta }$.

## Proof

We suppose there exists an **arbitrary** $b^*$ which is the estimator of $\beta$. Then, there must be a fixed matrix, $A_{k \times n}$, such that $b^* = Ay$.

We say $b^*$ is unbiased for $\beta$:

$$
\beta = E(b^*) = E(Ay)
$$

$$
E(Ay) = E(A(X\beta + \epsilon))=E(AX\beta + A\epsilon)
$$

$$
E(AX\beta + A\epsilon) = AX\beta+A\underbrace{ E(\epsilon) }_{ =0 } = AX\beta
$$
Since $\beta = AX\beta$, we get $AX = I_{k}$.

We define $D = A - (X'X)^{-1}X'$, so 

$$
DX = AX - I = I - I = 0
$$

Now we calculate the [[Covariance]] matrix of the $b^*$:

$$
Var(b^*) = E[(b^* - \beta)(b^* - \beta)']
$$

$$
\begin{align}
Var(b^*) &= E[(b^* - \beta)(b^* - \beta)'] \\
&= E(A\epsilon \epsilon' A') \\
&= \sigma^2 AA' \\
&= \sigma^2 (D+(X'X)^{-1}X')(D+(X'X)^{-1}X')'\\
&= \sigma^2 (D+(X'X)^{-1}X')(D'+X[(X'X)^{-1}]') \\
&= \sigma^2 (DD' + 0 + 0+ I[(X'X)^{-1}]') \\
&= \sigma^2 DD' + \sigma^2 (X'X)^{-1} \\
 & = \sigma^2 DD' + Var(b)
\end{align}
$$

Thus, $\sigma^2 DD'$ is positive semi-definite only we set $D = 0$

$$
Var(b^*) \geq Var(b)
$$

This proves that the OLS estimator has the **smallest** [[Covariance]] matrix in the class of linear unbiased estimators.


> Recall that we have $b = (X'X)^{-1}y$



---



# Reference 

