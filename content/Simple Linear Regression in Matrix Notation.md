One of the reasons that we want to introduce **Matrix** to linear regression is that it has greater generality. We could use simpler notations to represent the model. You may first feel not familiar, just try to get used to it.

Recall the classic notation of [[Simple Linear Regression]]:

$$
y_{i} = \alpha + \beta x_{i} + \epsilon_{i}
$$

We change the notation a bit...

$$
y_{i} = \beta_{1} + \beta_{2} x_{i} + \epsilon_{i}
$$

Now, considering there are $n$ equations here, we could rewrite the group as:

- $\mathbf{y}=(y_{1},y_{2},\dots y_{n})'$
- $\mathbf{X}$ denotes an $n \times 2$ matrix:

$$
\mathbf{X} = \begin{pmatrix}
1  & x_{1} \\
1 & x_{2}  \\
\dots & \dots \\
1  &  x_{n}
\end{pmatrix}
$$

- the two-element column vector (In the [[Simple Linear Regression]], we only have those two): $\mathbf{\beta} = (\beta_{1},\beta_{2})'$
- and an error vector.

In short, we could rewrite the [[Simple Linear Regression]] in this way:

$$
\mathbf{y} = \mathbf{X} \mathbf{\beta} + \mathbf{\epsilon}
$$

Recall the assumption of [[Simple Linear Regression]], we could represent the error terms as:

> 这里缺一个引用，关于assumption的

$$
E\{\epsilon\} = \mathbf{0}, E\{\epsilon\epsilon'\}=\sigma^2\mathbf{I_{n}}
$$

Hint: Just a multiplication:

$$
\epsilon = \begin{pmatrix}
\epsilon_{1} \\
\epsilon_{2} \\
\dots \\
\epsilon_{n}
\end{pmatrix}, \text{and }\epsilon'= \begin{pmatrix}
\epsilon_{1},\epsilon_{2},\dots,\epsilon_{n}
\end{pmatrix}
$$

the estimator of $\beta$ is now $\mathbf{b}= (b_{1},b_{2})'$.

$$
S(\mathbf{b}) = \mathbf{e'}\mathbf{e} = (\mathbf{y - Xb})'(\mathbf{y - Xb})
$$
$$
= \mathbf{y'y-y'Xb-b'X'y+b'X'Xb}= \mathbf{y'y - 2b'X'y+b'X'Xb}
$$

Take the FOC here:

If you are not familiar with how to take derivatives under [[Matrix]] environment, see attached: [矩阵求导](https://zhuanlan.zhihu.com/p/273729929). In here, we conclude some useful results of differentiation of vectors:

$$
\mathbf{\frac{\delta(x'b)}{\delta b}=\frac{\delta(b' x)}{\delta b} = x}
$$
$$
\mathbf{\frac{\delta(b' A b)}{\delta b}=(A+A')b}
$$
$$
\mathbf{\frac{\delta^2(b' A b)}{\delta b \delta b'}=(A+A')}
$$

So it is clear that

$$
\frac{\mathbf{\delta(y'y)}}{\delta b} = 0
$$
$$
\mathbf{\frac{\delta(b'X'y)}{\delta b}= X'y}
$$

$$
\mathbf{\frac{\delta b'X'Xb}{\delta b}=2X'Xb}
$$

Thus,

$$\mathbf{\frac{\delta S(b)}{\delta b} =} 2\mathbf{X'Xb} - 2\mathbf{X'y = 0}
$$

To obtain the correct value of $\mathbf{b}$, we continue calculating:

$$
\mathbf{X'Xb - X'y = 0}
$$
$$
\mathbf{(X'X)^{-1}[X'Xb - X'y] = 0}
$$
$$
\mathbf{b - (X'X)^{-1}X'y = 0}
$$
$$
\mathbf{b = (X'X)^{-1}X'y}
$$

This is what we want to know.
