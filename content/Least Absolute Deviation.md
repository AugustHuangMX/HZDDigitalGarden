---
created: 2026-03-26 10:08
modified: 2026-03-26 10:09
tags: []
---


## Background

It is a method of regression.

---

$$
\hat{\beta} = \arg \min_{\beta} \sum_{i=1}^N |y_{i} - x_{i}'  \beta|
$$

The key difference compared with LAD and OLS([[Ordinary Least Squares]]) is that 

- **OLS 求"平均"**：异常值通过平方放大，会强力"拉扯"回归线
- **LAD 求"中位数"**：异常值只贡献线性影响，对拟合线影响有限


### Advantages/Disadvantages

**优点：**

- 对异常值鲁棒
- 适用于重尾分布数据

**缺点：**

- 解不唯一（可能有多个最优解）
- 计算复杂度高（需用线性规划求解，无闭式解）
- 对小误差不敏感（在原点不可微）

---

## Reference

- [[Ordinary Least Squares]]