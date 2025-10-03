
The motivation we develop [[Multiple Linear Regression]] is that [[Simple Linear Regression]] only contains one variable that could *explaining* $Y$.

That is, it will face a serious [[Omitted Variable Bias]] (OVB) problem.

## OLS under OVB

The true model:

$$
Y_i = \beta_0 +\beta_1 X_{1i}+\beta_2 X_{2i}+U_I
$$

However, we incorrectly assume:

$$
Y_i = \alpha_0 +\alpha_{1i} X_{1i}+V_i
$$

Where $E[V_i|X_{1i}]=0$



---

From [[Simple Linear Regression in Matrix Notation]], we could also use [[Matrix]] to denote the model.

The initial model is:

$$
y_{i}+ \beta_{1}+\beta_{2}x_{2i}+\beta_{3}x_{3i}+\dots\beta_{k}x_{ki}+\epsilon_{i}
$$

We have $k$ unknowns, and $n$ equations. Only when equations are more than unknowns, we could get the answers.

However, once we change the unknowns to:

$$
\mathbf{X} = \begin{pmatrix}
1 & x_{21} & \dots & x_{k1} \\
\dots  & \dots & \dots & \dots \\
1 & x_{2n} & \dots & x_{kn}
\end{pmatrix}
$$

We could denote the model to a much more simpler form:

$$
\mathbf{y = X \beta + \epsilon}
$$

recall that from [[Simple Linear Regression in Matrix Notation]], the FOC of $S(b))$ is exactly the same, thanks to the matrix:

$$
\mathbf{\frac{\delta S(b)}{\delta b} =} 2\mathbf{X'Xb} - 2\mathbf{X'y = 0}
$$

The difference is that the $\mathbf{X'X}$ is now a $k \times k$ matrix, not $1 \times 1$

We now could derive $e$:

$$
\mathbf{y = Xb +e}
$$
$$
\mathbf{e = y -Xb}
$$
$$
\mathbf{e = y - X (X'X)^{-1}X' y}
$$
$$
\mathbf{e = (I_{k \times k} - X (X'X)^{-1}X' )y}
$$

$$
\mathbf{X'e= X'(I_{n \times n} - X (X'X)^{-1}X' )y}
$$
We called $\mathbf{M = I - X(X'X)^{-1}X'}$ “残差生成矩阵”

$$
\mathbf{X'e= X'I_{k\times k}y-  \underbrace{ X'X (X'X)^{-1} }_{ I_{k} }X'y}  
$$

Thus,

$$
\mathbf{X'e = 0}
$$


Thus we prove that the residual vector $e$ is ==orthogonal== to the matrix of explanatory variables $X$, i.e. $\mathbf{X'e = 0}$.

## OLS part

[[Ordinary Least Squares]]

We could then write $\hat{y}$:

$$
\mathbf{ \hat{y} = Xb = X \underbrace{ (X'X)^{-1} X' y }_{ b }} 
$$
We denote $\mathbf{H}$:
$$
\mathbf{H = X(X'X)^{-1}X'}
$$

$$
\mathbf{y=H y + My = \hat{y}+e}
$$

Try to figure out that $\mathbf{MH = 0}$ ($\mathbf{H}$ and $\mathbf{M}$ are orthogonal).

> Hint: $\mathbf{H = I - M}$

1. identity matrix
2. orthogonal projection matrix

are both [[Idempotency]].

## The Least Squares is unbiased

See [[Unbiasedness]].

$$
b = (X'X)^{-1}X'(X\beta+\epsilon)=\beta+(X'X)^{-1}X'\epsilon
$$

To see why the OLS estimator is most efficient, see attached: Proof of [[Gauss-Markov Theorem]].


## Estimating the disturbance [[Variance]]

That is to check $e$.

Recall that we have $$
\mathbf{e = (I_{k \times k} - X (X'X)^{-1}X' )y}
$$
We denote $M = I_{k \times k} - X (X'X)^{-1}X'$

so $e = My$.

we already know that $MX = 0$

so $$
e = My = M(X\beta + \epsilon) = \underbrace{ MX\beta }_{ =0 } +M\epsilon = M\epsilon 
$$
Thus $E(e) = E[M\epsilon] = ME[\epsilon] = M 0 = 0$

Under the current assumptions, $M = I_{n \times n} - X (X'X)^{-1}X'$ is a fixed matrix, and $E(\epsilon \epsilon')=\sigma^2I$.

$$
\begin{align}
Var(e) &= E[e e'] = E[M \epsilon\epsilon'M] \\
 & = \sigma^2 M^2 \\
 & = \sigma^2 M
\end{align}
$$

Hint: $M$ is idempotent. See [[Idempotency]].


So we know that:

$$
E(\epsilon' M \epsilon) = \sigma^2 \mathrm{Tr}(M)
$$
A simple proof: to see why the expectation of a matrix is equal to its [[Trace]], see [here](https://www.zhihu.com/question/429444294)

$$
\begin{align}
\mathrm{Tr}(M) & = \mathrm{Tr}(I) - \mathrm{Tr}(X(X'X)^{-1}X') \\
 & = n - k
\end{align}
$$

This shows that $E[e'e] = (n-k)\sigma^2$ so that:

$$
s^2 = \frac{e'e}{n-k}
$$

is unbiased estimator of $\sigma^2$. $s$ is called **standard error of the regression**.

$n-k$ is also the degree of freedom.

$$
R^2 = 1 - \frac{SSR}{SST}
$$

# Omitting Relevant Variables

The source of omitted relevant variables: if we ignore some of the dependent variables that have significant relation with the explanatory variables, we could cause **bias** in the regressors.

> Eg: we are focusing on the relation between wage and education, but we forget to include `Experience` as a explanatory variable.

## Discussion

Suppose the true model is:

$$
y = X\beta + \epsilon = X_{1} \beta_{1}+ X_{2}\beta_{2} + \epsilon
$$

Suppose we omit $X_{2}$, the model now becomes:

$$
y = X_{1}\beta_{1}+\epsilon
$$

Now the **restricted estimator** is:

$$
\begin{align}
b_{R} & = (X_{1}'X_{1})^{-1} X_{1}'y \\
 & =(X_{1}'X_{1})^{-1}X_{1}'(X_{1} \beta_{1}+ X_{2}\beta_{2} + \epsilon) \\
 & =\beta_{1}+ (X_{1}'X_{1})^{-1} X_{1}'X_{2}\beta_{2}+(X_{1}'X_{1})^{-1} X_{1}'\epsilon
\end{align}
$$

$$
E(b_{R}) = \beta_{1}+(X_{1}'X_{1})^{-1}X_{1}'X_{2}\beta_{2}
$$

It shows that $b_{R}$ will be biased in a predictable direction: the bias is equal to the regression effect of $X_{2}$ predicted by a regression on $X_{2}$.

We use $e_{R} = y - X_{1}b_{R}$ to represent the corresponding restricted residuals.

Now we have a clear thinking that there must be a difference between $b_{R}$ and $b_{1}$.

## Comparison between residuals

Now we compare $e_{R}'e_{R}$ and $e'e$:

First, we try to get $e_{R}$:

$$
e_{R} = M_{1}y = M_{1}(X_{1}b_{1}+X_{2}b_{2}+e) = M_{1}X_{2}b_{2}+e
$$

> 如何形象理解$M$ 的意义？ 其实简单来说，$M$ 是一个投影矩阵，它的作用就是将一个向量投影到$X$ 的列空间的正交补空间上。简单来说，$M$会移除任何在$X$ 列空间内的成分。

After calculating the results, we could figure out:

$$
e_{R}'e_{R} \geq e'e
$$

Only when $M_{1}X_2b_{2}=0$, the equal sign is satisfied.

