---
tags:
  - Econometrics
created:
---
对于随机向量 $a$，有：

$$E[aa'] = \text{Var}(a) + E[a]E[a]'$$

这就是"协方差矩阵 + 均值的外积"。

**外积（outer product）** 是指两个向量相乘得到一个矩阵。如果 $\mu = E[a]$ 是 $K \times 1$ 的向量，那么：

$$\mu \mu' = \begin{pmatrix} \mu_1 \\ \mu_2 \\ \vdots \\ \mu_K \end{pmatrix} \begin{pmatrix} \mu_1 & \mu_2 & \cdots & \mu_K \end{pmatrix} = \begin{pmatrix} \mu_1^2 & \mu_1\mu_2 & \cdots \\ \mu_2\mu_1 & \mu_2^2 & \cdots \\ \vdots & & \ddots \end{pmatrix}$$

这是一个 $K \times K$ 的矩阵，叫做外积。与之对应，**内积（inner product）** $\mu'\mu = \sum \mu_i^2$ 是一个标量。

**为什么有这个恒等式？** 其实就是标量情形 $E[X^2] = \text{Var}(X) + (E[X])^2$ 的多维推广。

