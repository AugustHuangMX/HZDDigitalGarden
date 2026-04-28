---
title: Trace
course: EC484 Metrics
tags:
  - Econometrics
---
矩阵的 Trace 指：方阵对角线元素之和：

$$\text{tr}(A) = \sum_{i=1}^{K} a_{ii}$$

**在统计学中最常见的理解：** 如果 $A$ 是一个协方差矩阵，对角线上的元素就是各个分量的方差，所以 $\text{tr}(A)$ 就是"总方差"——所有维度的方差加在一起。

> 如果一个矩阵不是**方阵**，既然对角线无意义，那么也不存在 trace 的定义。

## 常见的 Trace 情况

$$\text{tr}(I_K) = K$$

$I_K$ 的对角线上全是 1，有 $K$ 个，加起来就是 $K$。

## Trace Trick

**Trace trick 的核心：** 对于标量 $a'Ba$（这是一个 $1 \times 1$ 的数），有：

$$a'Ba = \text{tr}(a'Ba) = \text{tr}(Baa')$$

最后一步用了 trace 的循环性质：$\text{tr}(XYZ) = \text{tr}(ZXY)$。取期望后：

$$E[a'Ba] = \text{tr}(B \cdot E[aa'])$$

这个技巧的价值在于：把一个"标量期望"问题转化成了"矩阵期望"问题，而矩阵的期望通常更容易算（比如 $E[aa']$ 就是协方差矩阵加上均值的外积）。

[[Outer Product|查看外积的概念]]

