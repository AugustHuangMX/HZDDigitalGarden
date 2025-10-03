#Econ/Econometrics  #Statistics 
回归分析（regression analysis）是通过其他变量来预测某一变量的值

# Basic Model

 $$
 y=\beta_0+\beta_1x+\epsilon
$$

其中 $\epsilon$ 是一个误差变量，也是新引用出来的 $\widehat{y}=b_0+b_1x$

在这里 $\hat{y}$ 是一个预测值或者说拟合值。利用到第四章中所讲过的**最小二乘法**（least squares methods）就是利用一群点（我们样本里的数据）来尝试拟合出一条直线，越精确越好。

也就是说，系数 $b_0$ 和 $b_1$ 必须使**离差平方和**

$$\sum_{i=1}^n(y_1-\hat{y_i})$$

接下来是一些最小二乘直线系数：
$b_1=\frac{s_{xy}}{s^2_x}$ This is coefficient

$b_0=\hat{y}-b_1\hat{x}$

Inside,

$s_{xy}=\frac{\sum^n_{i=1}(x_i-\overline{x})(y_i-\overline{y})}{n-1}$  This is [[Covariance]]

$s_{x^2}=\frac{\sum^n_{i=1}(x_i-\overline{x})^2}{n-1}$  This is [[Variance]]

We seldom calculate those stuff by hand. It's too hard.

---

In the course [[ECON3003 Econometric II]] taught by professor [Chen Jia](https://fss.um.edu.mo/chen-jia-%E9%99%B3%E4%BD%B3/), we first dive into a new notation, which is [[Simple Linear Regression in Matrix Notation]], combined with some background knowledge from [[Linear Algebra MOC]].

