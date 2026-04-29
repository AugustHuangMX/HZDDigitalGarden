---
tags:
  - Econometrics
---
**假设检验的基本框架：**

1. **设定假设：** 原假设 $H_0: \beta = 0$，备择假设 $H_1: \beta \neq 0$
    
2. **构造检验统计量：** t 统计量衡量"估计值离零有多远"（用标准误标准化）： $$t = \frac{\hat{\beta}}{\text{se}(\hat{\beta})}$$
> 直觉是：只有我们标准化了之后我们才有一个统一的量纲（比如 1.96）去衡量是否应该拒绝。
    
3. **确定拒绝规则：** 在 5% 显著性水平下，如果 $|t| > 1.96$，拒绝 $H_0$。
    
4. **解读：** 拒绝意味着数据提供了足够证据表明 $\beta \neq 0$；不拒绝意味着数据不足以判断 $\beta$ 与零有显著差异

在线性回归 $Y = X\beta + e$ 中，OLS 估计量的方差为：

$$\text{Var}(\hat{\beta}|X) = (X'X)^{-1}X'DX(X'X)^{-1}$$

其中 $D = \text{diag}(\sigma^2(X_1), \ldots, \sigma^2(X_n))$。如果假设同方差 $\sigma^2(X_i) = \sigma^2$，简化为 $\sigma^2(X'X)^{-1}$。

标准误就是这个方差矩阵对角线元素的平方根：

$$\text{se}(\hat{\beta}_j) = \sqrt{\widehat{\text{Var}}(\hat{\beta}_j)}$$

实践中 $\sigma^2$ 未知，用残差估计：$\hat{\sigma}^2 = \frac{1}{n-K}\sum_{i=1}^n \hat{e}_i^2$。

直觉：标准误衡量的是"如果我反复抽样，$\hat{\beta}_j$ 会波动多大"。t 统计量 $t = \hat{\beta}_j / \text{se}(\hat{\beta}_j)$ 就是把估计值按这个波动幅度标准化，看它离零有几个标准差。
