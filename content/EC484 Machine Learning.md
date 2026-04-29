---
tags:
  - Econometrics
---
主要是汇总一些 EC484 Machine 课件的一些笔记和感悟。题目来源更多是 Problem Set 6 Q2.

## Post Selection Inference

设定中是两个模型：

$$
\begin{align}
M_{1} & : Y = X_{1}\beta_{1}+X_{2}\beta_{2} + e \\
M_{2} & : Y = X_{1}\beta_{1} + e
\end{align}
$$

where $\begin{pmatrix}X_{1}  \\ X_{2}\end{pmatrix}  \sim N(\begin{pmatrix}0 \\ 0\end{pmatrix}, \begin{pmatrix}1 & \rho \\ \rho & 1\end{pmatrix})$ and $e \sim N(0,1)$

其中一个做法就是，我们先对 $\beta_{2}=0$ 做一个 t test （用 $M_{1}$）如果拒绝原假设，则我们就用 $M_{1}$ 跑回归，反之则用 $M_{2}$。But when $\rho$ is large and $\beta_{2}$ takes intermediate values, *converge is severely distorted*.

An example:

假设你研究教育( $X_1$ )对工资( $Y$ )的影响，$X_2$ 是工作经验，且教育和经验高度相关（$\rho$ 大，比如受教育多的人往往工作经验少）。

**场景：** 真实世界中 $\beta_2$（经验的效应）不大不小，处于"模糊地带"。

你拿到一份数据，做 t 检验：

- **如果这份数据碰巧让经验看起来不显著**：你选 $M_2$，丢掉经验。但因为教育和经验高度相关，丢掉经验会让 $\hat{\beta}_1$ 偏大（遗漏变量偏误方向）。这种情况下你的 $\hat{\beta}_1$ 倾向于高估。
    
- **如果这份数据碰巧让经验看起来显著**：你选 $M_1$，保留经验。这种情况下 $\hat{\beta}_1$ 没有遗漏偏误。
    

问题在于：**你选哪个模型本身就取决于数据的随机波动**。最终 $\hat{\beta}_1$ 的实际分布是两种情况的混合，但你构造置信区间时用的是单一模型下的标准误——完全忽略了"选模型"这一步引入的额外不确定性。所以 95% 的置信区间实际覆盖率远低于 95%。

See [[t test]].

The right way to conduct the inference should be [[Partialling-out Lasso]]


