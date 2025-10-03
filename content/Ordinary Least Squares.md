#Econ/Econometrics 

OLS 是普通最小二乘法（Ordinary Least Squares）的缩写，是一种常见的回归分析方法。OLS 方法通过最小化实际观测值和预测值之间的残差平方和来估计回归系数，从而建立一个线性模型。OLS 方法假设误差项服从正态分布，并且误差项之间是独立同分布的。OLS 方法在经济学、金融学、统计学等领域得到广泛应用，常用于解决因果关系和预测问题

![](截屏2023-07-18%2009.06.31.png)

Aim: make the blue line as short as possible.

It is strongly connected to the [Simple Linear Regression](Simple%20Linear%20Regression.md), [[Multiple Regression]], etc.

$y=\beta_0+\beta_1x+\epsilon$,       $i=1,2,...n$

[[Gauss-Markov Theorem]]

---

Above them, it is still called the [Simple Linear Regression](Simple%20Linear%20Regression.md),

However,  we have to come to the [Multiple Regression](Multiple%20Regression.md)

$\hat \beta_{(k+1)*1}$ is the vector

$\hat y=X\hat\beta$ is the *predicted value* ( or so called fitted value )

$\hat y=X\hat\beta+\hat u$

随机扰动项 residual: $\hat u=y-\hat y$

> $u$ is never observed, but $\hat  u$ could be observed
 
[Dummy Variable](Dummy%20Variable.md)


---

Some nice properties of OLS estimator: 

1. Efficiency
2. MSE
3. [[Consistency]]












> Reference:
> https://zhuanlan.zhihu.com/p/60233029