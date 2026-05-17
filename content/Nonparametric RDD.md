## Background

See [[Regression Discontinuity Design]]

---

[[Nonparametric RDD]] 的核心就是不拟合全局多项式，而是只看 cutoff $[x_{0}-\delta, x_{0}+\delta]$ 内的数据，比较两侧均值或者使用 local [[Linear Regression]].

## Limitation 

窄的窗口注定会损失数据，因此选择 bandwidth 带来的 bias-variance tradeoff 是重中之重—— $\delta$ 太小方差会大，$\delta$ 太大会有偏误。




---

## Reference

